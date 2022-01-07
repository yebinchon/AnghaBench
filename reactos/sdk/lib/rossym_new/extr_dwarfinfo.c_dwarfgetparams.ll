; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfinfo.c_dwarfgetparams.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfinfo.c_dwarfgetparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i32, i32, i32 }

@TagFormalParameter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"param[%d] block %s -> type %x loctype %x fde %x len %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarfgetparams(i32* %0, %struct.TYPE_15__* %1, i64 %2, i32 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 56, i1 false)
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = call i32 @dwarfnextsymat(i32* %15, %struct.TYPE_15__* %16, %struct.TYPE_15__* %12)
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %145, %5
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %149

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TagFormalParameter, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %145

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %145

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @strlen(i32 %48)
  %50 = add nsw i64 %49, 1
  %51 = call i32 @malloc(i64 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  store i32 %51, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcpy(i32 %62, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  store i32 %68, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  store i32 %76, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  store i64 %85, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  store i64 %105, i64* %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @werrstr(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %117, i32 %123, i64 %129, i64 %135, i32 %141)
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %45, %39, %33, %27
  %146 = load i32*, i32** %6, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %148 = call i32 @dwarfnextsymat(i32* %146, %struct.TYPE_15__* %147, %struct.TYPE_15__* %12)
  store i32 %148, i32* %13, align 4
  br label %18

149:                                              ; preds = %25
  %150 = load i32, i32* %11, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dwarfnextsymat(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i32 @malloc(i64) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i32 @werrstr(i8*, i32, i32, i32, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
