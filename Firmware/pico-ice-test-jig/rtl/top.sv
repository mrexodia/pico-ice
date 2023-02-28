module top (
  input ICE_2,
  input ICE_3,
  input ICE_4,
  input ICE_6,
  input ICE_9,
  input ICE_10,
  input ICE_11,
  input ICE_18,
  input ICE_19,
  input ICE_20_G3,
  input ICE_21,
  input ICE_23,
  input ICE_25,
  input ICE_26,
  input ICE_27,
  input ICE_28,
  input ICE_31,
  input ICE_32,
  input ICE_34,
  input ICE_35_G0,
  input ICE_36,
  input ICE_38,
  input ICE_42,
  input ICE_43,
  input ICE_44_G6,
  input ICE_45,
  input ICE_46,
  input ICE_47,
  input ICE_48,
  input ICE_FLASH_IO2,
  input ICE_FLASH_IO3,
  input ICE_SO,
  input ICE_SI,
  input ICE_SCK,
  input ICE_SSN,
  input SRAM_SS,
  output LED_G,
  output LED_B,
  output LED_R
);
  logic led_r = ICE_10;

  SB_RGBA_DRV #(
    .CURRENT_MODE ("0b1"),   /* half current */
    .RGB0_CURRENT ("0b000001"),  /* 4 mA */
    .RGB1_CURRENT ("0b000001"),  /* 4 mA */
    .RGB2_CURRENT ("0b000001") /* 4 mA */
  ) rgba_drv (
    .CURREN(1'b1),
    .RGBLEDEN(1'b1),
    .RGB0PWM(led_g),
    .RGB0(LED_G),
    .RGB1PWM(led_b),
    .RGB1(LED_B),
    .RGB2PWM(led_r),
    .RGB2(LED_R)
  );


endmodule
