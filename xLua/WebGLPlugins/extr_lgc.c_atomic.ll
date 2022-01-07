; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lgc.c_atomic.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_lgc.c_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32* }

@GCSinsideatomic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atomic(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_15__* @G(i32* %8)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i1 [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @lua_assert(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @iswhite(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @lua_assert(i32 %32)
  %34 = load i32, i32* @GCSinsideatomic, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @markobject(%struct.TYPE_15__* %39, i32* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 7
  %45 = call i32 @markvalue(%struct.TYPE_15__* %42, i32* %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = call i32 @markmt(%struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i32 @remarkupvals(%struct.TYPE_15__* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = call i32 @propagateall(%struct.TYPE_15__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %4, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 6
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = call i32 @propagateall(%struct.TYPE_15__* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = call i32 @convergeephemerons(%struct.TYPE_15__* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @clearvalues(%struct.TYPE_15__* %64, i32* %67, i32* null)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @clearvalues(%struct.TYPE_15__* %69, i32* %72, i32* null)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %5, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %6, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %4, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = call i32 @separatetobefnz(%struct.TYPE_15__* %85, i32 0)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = call i32 @markbeingfnz(%struct.TYPE_15__* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = call i32 @propagateall(%struct.TYPE_15__* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = call i32 @convergeephemerons(%struct.TYPE_15__* %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @clearkeys(%struct.TYPE_15__* %97, i32* %100, i32* null)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @clearkeys(%struct.TYPE_15__* %102, i32* %105, i32* null)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @clearvalues(%struct.TYPE_15__* %107, i32* %110, i32* %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @clearvalues(%struct.TYPE_15__* %113, i32* %116, i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = call i32 @luaS_clearcache(%struct.TYPE_15__* %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = call i32 @otherwhite(%struct.TYPE_15__* %121)
  %123 = call i32 @cast_byte(i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %4, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local %struct.TYPE_15__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @iswhite(i32) #1

declare dso_local i32 @markobject(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @markvalue(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @markmt(%struct.TYPE_15__*) #1

declare dso_local i32 @remarkupvals(%struct.TYPE_15__*) #1

declare dso_local i32 @propagateall(%struct.TYPE_15__*) #1

declare dso_local i32 @convergeephemerons(%struct.TYPE_15__*) #1

declare dso_local i32 @clearvalues(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @separatetobefnz(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @markbeingfnz(%struct.TYPE_15__*) #1

declare dso_local i32 @clearkeys(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @luaS_clearcache(%struct.TYPE_15__*) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local i32 @otherwhite(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
