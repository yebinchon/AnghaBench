; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/untgz/extr_untgz.c_strtime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/untgz/extr_untgz.c_strtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@strtime.result = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c"%4d/%02d/%02d %02d:%02d:%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strtime(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tm*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %5, %struct.tm** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1900
  %10 = load %struct.tm*, %struct.tm** %3, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tm*, %struct.tm** %3, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tm*, %struct.tm** %3, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strtime.result, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strtime.result, i64 0, i64 0)
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
