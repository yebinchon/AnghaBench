; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_keysym_translation_state_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_keysym_translation_state_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xkb_state = type { i32 }
%struct.xkb_rule_names = type { i32 }
%struct.xkb_context = type { i32 }
%struct.xkb_keymap = type { i32 }

@XKB_CONTEXT_NO_FLAGS = common dso_local global i32 0, align 4
@XKB_KEYMAP_COMPILE_NO_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xkb_state* (i32)* @keysym_translation_state_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xkb_state* @keysym_translation_state_create(i32 %0) #0 {
  %2 = alloca %struct.xkb_rule_names, align 4
  %3 = alloca %struct.xkb_context*, align 8
  %4 = alloca %struct.xkb_keymap*, align 8
  %5 = getelementptr inbounds %struct.xkb_rule_names, %struct.xkb_rule_names* %2, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = load i32, i32* @XKB_CONTEXT_NO_FLAGS, align 4
  %7 = call %struct.xkb_context* @xkb_context_new(i32 %6)
  store %struct.xkb_context* %7, %struct.xkb_context** %3, align 8
  %8 = load %struct.xkb_context*, %struct.xkb_context** %3, align 8
  %9 = load i32, i32* @XKB_KEYMAP_COMPILE_NO_FLAGS, align 4
  %10 = call %struct.xkb_keymap* @xkb_keymap_new_from_names(%struct.xkb_context* %8, %struct.xkb_rule_names* %2, i32 %9)
  store %struct.xkb_keymap* %10, %struct.xkb_keymap** %4, align 8
  %11 = load %struct.xkb_context*, %struct.xkb_context** %3, align 8
  %12 = call i32 @xkb_context_unref(%struct.xkb_context* %11)
  %13 = load %struct.xkb_keymap*, %struct.xkb_keymap** %4, align 8
  %14 = call %struct.xkb_state* @xkb_state_new(%struct.xkb_keymap* %13)
  ret %struct.xkb_state* %14
}

declare dso_local %struct.xkb_context* @xkb_context_new(i32) #1

declare dso_local %struct.xkb_keymap* @xkb_keymap_new_from_names(%struct.xkb_context*, %struct.xkb_rule_names*, i32) #1

declare dso_local i32 @xkb_context_unref(%struct.xkb_context*) #1

declare dso_local %struct.xkb_state* @xkb_state_new(%struct.xkb_keymap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
