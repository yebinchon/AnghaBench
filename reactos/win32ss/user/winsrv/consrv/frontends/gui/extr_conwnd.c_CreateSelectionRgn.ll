; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_CreateSelectionRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_CreateSelectionRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }

@.str = private unnamed_addr constant [54 x i8] c"\0ASmallRect = (%d, %d, %d, %d)\0Asr = (%d, %d, %d, %d)\0A\0A\00", align 1
@RGN_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, %struct.TYPE_15__*)* @CreateSelectionRgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateSelectionRgn(%struct.TYPE_16__* %0, i32 %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_15__, align 8
  %21 = alloca %struct.TYPE_15__, align 8
  %22 = alloca %struct.TYPE_15__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = call i32 @SmallRectToRect(%struct.TYPE_16__* %29, i32* %10, %struct.TYPE_15__* %30)
  %32 = call i32 @CreateRectRgnIndirect(i32* %10)
  store i32 %32, i32* %5, align 4
  br label %178

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = call i32 @GetSelectionBeginEnd(%struct.TYPE_18__* %12, %struct.TYPE_18__* %13, i32 %34, %struct.TYPE_15__* %35)
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %82, label %61

61:                                               ; preds = %42
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %75, %68, %61, %42
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @DPRINT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %88, i64 %91, i64 %94, i64 %96, i64 %98, i64 %100, i64 %102)
  br label %104

104:                                              ; preds = %82, %75
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = call i32 @SmallRectToRect(%struct.TYPE_16__* %105, i32* %15, %struct.TYPE_15__* %14)
  %107 = call i32 @CreateRectRgnIndirect(i32* %15)
  store i32 %107, i32* %11, align 4
  br label %176

108:                                              ; preds = %33
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, 1
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store i64 %125, i64* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 1
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  store i64 %136, i64* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, 1
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 3
  store i64 %140, i64* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store i64 %144, i64* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  store i64 %150, i64* %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = call i32 @SmallRectToRect(%struct.TYPE_16__* %152, i32* %23, %struct.TYPE_15__* %20)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = call i32 @SmallRectToRect(%struct.TYPE_16__* %154, i32* %24, %struct.TYPE_15__* %21)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = call i32 @SmallRectToRect(%struct.TYPE_16__* %156, i32* %25, %struct.TYPE_15__* %22)
  %158 = call i32 @CreateRectRgnIndirect(i32* %23)
  store i32 %158, i32* %17, align 4
  %159 = call i32 @CreateRectRgnIndirect(i32* %24)
  store i32 %159, i32* %18, align 4
  %160 = call i32 @CreateRectRgnIndirect(i32* %25)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* @RGN_XOR, align 4
  %165 = call i32 @CombineRgn(i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @RGN_XOR, align 4
  %170 = call i32 @CombineRgn(i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @DeleteObject(i32 %171)
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @DeleteObject(i32 %173)
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %108, %104
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %176, %28
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @SmallRectToRect(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @CreateRectRgnIndirect(i32*) #1

declare dso_local i32 @GetSelectionBeginEnd(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @DPRINT1(i8*, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CombineRgn(i32, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
