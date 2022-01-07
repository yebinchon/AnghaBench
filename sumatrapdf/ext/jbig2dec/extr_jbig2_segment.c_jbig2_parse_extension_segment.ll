; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_segment.c_jbig2_parse_extension_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_segment.c_jbig2_parse_extension_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"segment too short\00", align 1
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"extension segment is marked 'necessary' but not 'reserved' contrary to spec\00", align 1
@JBIG2_SEVERITY_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ignoring ASCII comment\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ignoring UCS-2 comment\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"unhandled necessary extension segment type 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"unhandled non-necessary extension segment, skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @jbig2_parse_extension_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_parse_extension_segment(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %77

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @jbig2_get_uint32(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 536870912
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -2147483648
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %34, %31, %22
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %57 [
    i32 536870912, label %43
    i32 536870914, label %50
  ]

43:                                               ; preds = %41
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %76

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %51, i32 %52, i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %76

57:                                               ; preds = %41
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %4, align 4
  br label %77

68:                                               ; preds = %57
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32*, i32, i32, i8*, ...) @jbig2_error(i32* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %50, %43
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %60, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @jbig2_get_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
