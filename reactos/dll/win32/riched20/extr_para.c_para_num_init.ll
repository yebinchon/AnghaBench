; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_para.c_para_num_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_para.c_para_num_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32*, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }

@para_num_init.bullet_font = internal constant [7 x i8] c"Symbol\00", align 1
@para_num_init.bullet_str = internal constant [2 x i8] c"\B7\00", align 1
@para_num_init.spaceW = internal constant [2 x i8] c" \00", align 1
@PFN_BULLET = common dso_local global i64 0, align 8
@CFM_FACE = common dso_local global i32 0, align 4
@CFM_CHARSET = common dso_local global i32 0, align 4
@SYMBOL_CHARSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @para_num_init(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %136

21:                                               ; preds = %14, %2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %63, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %5, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PFN_BULLET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  store i32 16, i32* %40, align 4
  %41 = load i32, i32* @CFM_FACE, align 4
  %42 = load i32, i32* @CFM_CHARSET, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @para_num_init.bullet_font, i64 0, i64 0), i32 7)
  %48 = load i32, i32* @SYMBOL_CHARSET, align 4
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32* @ME_ApplyStyle(i32 %52, i32* %53, %struct.TYPE_25__* %6)
  store i32* %54, i32** %5, align 8
  br label %58

55:                                               ; preds = %27
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @ME_AddRefStyle(i32* %56)
  br label %58

58:                                               ; preds = %55, %39
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i32* %59, i32** %62, align 8
  br label %63

63:                                               ; preds = %58, %21
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = icmp ne %struct.TYPE_18__* %67, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PFN_BULLET, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %79 = call i32 @para_num_get_num(%struct.TYPE_23__* %78)
  %80 = call %struct.TYPE_18__* @para_num_get_str(%struct.TYPE_23__* %77, i32 %79)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %83, align 8
  br label %89

84:                                               ; preds = %69
  %85 = call %struct.TYPE_18__* @ME_MakeStringConst(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @para_num_init.bullet_str, i64 0, i64 0), i32 1)
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %88, align 8
  br label %89

89:                                               ; preds = %84, %76
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ME_SelectStyleFont(%struct.TYPE_24__* %91, i32* %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @GetTextExtentPointW(i32 %99, i8* %105, i32 %111, %struct.TYPE_22__* %8)
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  store i64 %114, i64* %117, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @GetTextExtentPointW(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @para_num_init.spaceW, i64 0, i64 0), i32 1, %struct.TYPE_22__* %8)
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %123
  store i64 %128, i64* %126, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ME_UnselectStyleFont(%struct.TYPE_24__* %129, i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %90, %20
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32* @ME_ApplyStyle(i32, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @ME_AddRefStyle(i32*) #1

declare dso_local %struct.TYPE_18__* @para_num_get_str(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @para_num_get_num(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_18__* @ME_MakeStringConst(i8*, i32) #1

declare dso_local i32 @ME_SelectStyleFont(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @GetTextExtentPointW(i32, i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ME_UnselectStyleFont(%struct.TYPE_24__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
