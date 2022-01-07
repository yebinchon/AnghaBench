; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_dbgstr_longlong.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_dbgstr_longlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbgstr_longlong.buf = internal global [16 x [64 x i8]] zeroinitializer, align 16
@dbgstr_longlong.idx = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%08lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @dbgstr_longlong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dbgstr_longlong(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @dbgstr_longlong.idx, align 4
  %4 = and i32 %3, 15
  store i32 %4, i32* @dbgstr_longlong.idx, align 4
  %5 = load i32, i32* @dbgstr_longlong.idx, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [16 x [64 x i8]], [16 x [64 x i8]]* @dbgstr_longlong.buf, i64 0, i64 %6
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @dbgstr_longlong.idx, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @dbgstr_longlong.idx, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [16 x [64 x i8]], [16 x [64 x i8]]* @dbgstr_longlong.buf, i64 0, i64 %14
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  ret i8* %16
}

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
