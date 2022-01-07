; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_get_keycode_for_keysym.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_get_keycode_for_keysym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.keycode_matches = type { i32, i32, i32 }

@XKB_KEYCODE_INVALID = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__* null, align 8
@find_keycode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i32)* @get_keycode_for_keysym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @get_keycode_for_keysym(i32 %0) #0 {
  %2 = alloca %struct.keycode_matches, align 4
  %3 = alloca i32, align 4
  %4 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds %struct.keycode_matches, %struct.keycode_matches* %2, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.keycode_matches, %struct.keycode_matches* %2, i32 0, i32 1
  %7 = load i32, i32* @XKB_KEYCODE_INVALID, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.keycode_matches, %struct.keycode_matches* %2, i32 0, i32 2
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xkb_state_get_keymap(i32 %12)
  %14 = load i32, i32* @find_keycode, align 4
  %15 = call i32 @xkb_keymap_key_for_each(i32 %13, i32 %14, %struct.keycode_matches* %2)
  %16 = bitcast { i64, i32 }* %4 to i8*
  %17 = bitcast %struct.keycode_matches* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = load { i64, i32 }, { i64, i32 }* %4, align 8
  ret { i64, i32 } %18
}

declare dso_local i32 @xkb_keymap_key_for_each(i32, i32, %struct.keycode_matches*) #1

declare dso_local i32 @xkb_state_get_keymap(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
