; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_priority.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_h2_frame* ()* @priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_h2_frame* @priority() #0 {
  %1 = call i32 @data(i32 0)
  %2 = call i32 @retype(i32 %1, i32 2)
  %3 = call i32 @resize(i32 %2, i32 5)
  %4 = call %struct.vlc_h2_frame* @localize(i32 %3)
  ret %struct.vlc_h2_frame* %4
}

declare dso_local %struct.vlc_h2_frame* @localize(i32) #1

declare dso_local i32 @resize(i32, i32) #1

declare dso_local i32 @retype(i32, i32) #1

declare dso_local i32 @data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
