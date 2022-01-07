; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_usp10_language_add_feature_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_usp10_language_add_feature_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i8, i32, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"table_type %#x, %u features.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8, %struct.TYPE_10__*, %struct.TYPE_12__*)* @usp10_language_add_feature_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usp10_language_add_feature_list(%struct.TYPE_14__* %0, i8 signext %1, %struct.TYPE_10__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8 %1, i8* %6, align 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GET_BE_WORD(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i8, i8* %6, align 1
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = bitcast %struct.TYPE_15__** %26 to i8**
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %32, %33
  %35 = call i32 @usp10_array_reserve(i8** %27, i32* %29, i32 %34, i32 32)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24, %4
  br label %151

38:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %142, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %145

43:                                               ; preds = %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GET_BE_WORD(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %55
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %12, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = bitcast %struct.TYPE_12__* %57 to i32*
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @GET_BE_WORD(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = bitcast i32* %64 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %14, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i64 %74
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %13, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @MS_MAKE_TAG(i32 %80, i32 %85, i32 %90, i32 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i8, i8* %6, align 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i8 %99, i8* %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @GET_BE_WORD(i32 %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @heap_calloc(i32 %113, i32 4)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %138, %43
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @GET_BE_WORD(i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %11, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %117

141:                                              ; preds = %117
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %39

145:                                              ; preds = %39
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %37
  ret void
}

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i32 @TRACE(i8*, i8 signext, i32) #1

declare dso_local i32 @usp10_array_reserve(i8**, i32*, i32, i32) #1

declare dso_local i32 @MS_MAKE_TAG(i32, i32, i32, i32) #1

declare dso_local i32* @heap_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
