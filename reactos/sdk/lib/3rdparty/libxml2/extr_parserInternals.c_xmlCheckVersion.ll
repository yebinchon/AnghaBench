; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlCheckVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlCheckVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIBXML_VERSION = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Fatal: program compiled against libxml %d using libxml %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Warning: program compiled against libxml %d using older %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCheckVersion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @LIBXML_VERSION, align 8
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @xmlInitParser()
  %7 = load i32, i32* %3, align 4
  %8 = sdiv i32 %7, 10000
  %9 = load i32, i32* %2, align 4
  %10 = sdiv i32 %9, 10000
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @xmlGenericErrorContext, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 10000
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 10000
  %18 = call i32 @xmlGenericError(i32 %13, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %2, align 4
  %21 = sdiv i32 %20, 10000
  %22 = load i32, i32* %3, align 4
  %23 = sdiv i32 %22, 10000
  %24 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i32, i32* %3, align 4
  %27 = sdiv i32 %26, 100
  %28 = load i32, i32* %2, align 4
  %29 = sdiv i32 %28, 100
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @xmlGenericErrorContext, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sdiv i32 %33, 100
  %35 = load i32, i32* %3, align 4
  %36 = sdiv i32 %35, 100
  %37 = call i32 @xmlGenericError(i32 %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local i32 @xmlGenericError(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
