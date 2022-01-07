; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_print_speed_test_help.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_print_speed_test_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [754 x i8] c"\0ARepeat the following $repeat times:\0A  1. Insert $write key-value pairs. One transaction for each write op.\0A  2. Pause for $pause ms.\0A  3. Perform $fetch queries on the database.\0A\0A  Keys are $keysize bytes in size. Values are $valsize bytes in size\0A  Both keys and values are pseudo-randomly generated\0A\0AOptions are:\0A  -repeat  $repeat                 (default value 10)\0A  -write   $write                  (default value 10000)\0A  -pause   $pause                  (default value 0)\0A  -fetch   $fetch                  (default value 0)\0A  -keysize $keysize                (default value 12)\0A  -valsize $valsize                (default value 100)\0A  -system  $system                 (default value \22lsm\22)\0A  -trans   $trans                  (default value 0)\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_speed_test_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_speed_test_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([754 x i8], [754 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
