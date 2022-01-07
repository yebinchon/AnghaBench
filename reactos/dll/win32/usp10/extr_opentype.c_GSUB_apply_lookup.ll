; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"type %#x, flag %#x, subtables %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"extension type %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unhandled Extension Substitution Format %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"lookup type is Extension Substitution but no extension subtable exists\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Extension Substitution types not valid here\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unhandled GSUB lookup type %#x.\0A\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64, i32*, i64, i64, i64*)* @GSUB_apply_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GSUB_apply_lookup(%struct.TYPE_14__* %0, i64 %1, i32* %2, i64 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GET_BE_WORD(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = bitcast %struct.TYPE_14__* %25 to i32*
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = bitcast i32* %29 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %16, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GET_BE_WORD(i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GET_BE_WORD(i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @GET_BE_WORD(i32 %42)
  %44 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 131
  br i1 %46, label %47, label %87

47:                                               ; preds = %6
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GET_BE_WORD(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %55 = bitcast %struct.TYPE_13__* %54 to i32*
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GET_BE_WORD(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %55, i64 %62
  %64 = bitcast i32* %63 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %17, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GET_BE_WORD(i32 %67)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %77

70:                                               ; preds = %53
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GET_BE_WORD(i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %83

77:                                               ; preds = %53
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GET_BE_WORD(i32 %80)
  %82 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %70
  br label %86

84:                                               ; preds = %47
  %85 = call i32 @WARN(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %83
  br label %87

87:                                               ; preds = %86, %6
  %88 = load i32, i32* %15, align 4
  switch i32 %88, label %135 [
    i32 128, label %89
    i32 129, label %96
    i32 134, label %103
    i32 130, label %110
    i32 133, label %117
    i32 132, label %125
    i32 131, label %133
  ]

89:                                               ; preds = %87
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64*, i64** %13, align 8
  %95 = call i64 @GSUB_apply_SingleSubst(%struct.TYPE_13__* %90, i32* %91, i64 %92, i64 %93, i64* %94)
  store i64 %95, i64* %7, align 8
  br label %140

96:                                               ; preds = %87
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = call i64 @GSUB_apply_MultipleSubst(%struct.TYPE_13__* %97, i32* %98, i64 %99, i64 %100, i64* %101)
  store i64 %102, i64* %7, align 8
  br label %140

103:                                              ; preds = %87
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64*, i64** %13, align 8
  %109 = call i64 @GSUB_apply_AlternateSubst(%struct.TYPE_13__* %104, i32* %105, i64 %106, i64 %107, i64* %108)
  store i64 %109, i64* %7, align 8
  br label %140

110:                                              ; preds = %87
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64*, i64** %13, align 8
  %116 = call i64 @GSUB_apply_LigatureSubst(%struct.TYPE_13__* %111, i32* %112, i64 %113, i64 %114, i64* %115)
  store i64 %116, i64* %7, align 8
  br label %140

117:                                              ; preds = %87
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = call i64 @GSUB_apply_ContextSubst(%struct.TYPE_14__* %118, %struct.TYPE_13__* %119, i32* %120, i64 %121, i64 %122, i64* %123)
  store i64 %124, i64* %7, align 8
  br label %140

125:                                              ; preds = %87
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i64*, i64** %13, align 8
  %132 = call i64 @GSUB_apply_ChainContextSubst(%struct.TYPE_14__* %126, %struct.TYPE_13__* %127, i32* %128, i64 %129, i64 %130, i64* %131)
  store i64 %132, i64* %7, align 8
  br label %140

133:                                              ; preds = %87
  %134 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %138

135:                                              ; preds = %87
  %136 = load i32, i32* %15, align 4
  %137 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %133
  %139 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %139, i64* %7, align 8
  br label %140

140:                                              ; preds = %138, %125, %117, %110, %103, %96, %89
  %141 = load i64, i64* %7, align 8
  ret i64 %141
}

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @GSUB_apply_SingleSubst(%struct.TYPE_13__*, i32*, i64, i64, i64*) #1

declare dso_local i64 @GSUB_apply_MultipleSubst(%struct.TYPE_13__*, i32*, i64, i64, i64*) #1

declare dso_local i64 @GSUB_apply_AlternateSubst(%struct.TYPE_13__*, i32*, i64, i64, i64*) #1

declare dso_local i64 @GSUB_apply_LigatureSubst(%struct.TYPE_13__*, i32*, i64, i64, i64*) #1

declare dso_local i64 @GSUB_apply_ContextSubst(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i64, i64, i64*) #1

declare dso_local i64 @GSUB_apply_ChainContextSubst(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
