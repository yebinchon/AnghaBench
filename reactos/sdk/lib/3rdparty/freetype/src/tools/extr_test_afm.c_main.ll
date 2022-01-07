; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_afm.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_test_afm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@Invalid_Argument = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"parse error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @Invalid_Argument, align 4
  %16 = call i32 @FT_ERR(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = call i32 @FT_Init_FreeType(%struct.TYPE_14__** %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %17
  %24 = call i32 @FT_ZERO(%struct.TYPE_13__* %7)
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @FT_Stream_Open(%struct.TYPE_13__* %7, i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %67

32:                                               ; preds = %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = call i32 @FT_ZERO(%struct.TYPE_13__* %9)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = call i32 @parse_afm(%struct.TYPE_14__* %38, %struct.TYPE_13__* %7, %struct.TYPE_13__* %9)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %32
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = call i32 @dump_fontinfo(%struct.TYPE_13__* %9)
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @FT_FREE(i64 %52)
  br label %54

54:                                               ; preds = %50, %42
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @FT_FREE(i64 %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %65

63:                                               ; preds = %32
  %64 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %62
  %66 = call i32 @FT_Stream_Close(%struct.TYPE_13__* %7)
  br label %67

67:                                               ; preds = %65, %31
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = call i32 @FT_Done_FreeType(%struct.TYPE_14__* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %21, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @FT_ERR(i32) #1

declare dso_local i32 @FT_Init_FreeType(%struct.TYPE_14__**) #1

declare dso_local i32 @FT_ZERO(%struct.TYPE_13__*) #1

declare dso_local i32 @FT_Stream_Open(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @parse_afm(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @dump_fontinfo(%struct.TYPE_13__*) #1

declare dso_local i32 @FT_FREE(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @FT_Stream_Close(%struct.TYPE_13__*) #1

declare dso_local i32 @FT_Done_FreeType(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
