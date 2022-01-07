; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lstring.c_internshrstr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lstring.c_internshrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32** }
%struct.TYPE_12__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, i8*, i64)* @internshrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @internshrstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_15__* @G(i32* %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @luaS_hash(i8* %14, i64 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @lmod(i32 %24, i32 %28)
  %30 = getelementptr inbounds i32*, i32** %23, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  br label %32

32:                                               ; preds = %71, %3
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = call %struct.TYPE_16__* @rawgco2ts(i32* %36)
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %35
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = call i32 @getstr(%struct.TYPE_16__* %53)
  %55 = load i64, i64* %7, align 8
  %56 = mul i64 %55, 1
  %57 = call i64 @memcmp(i8* %52, i32 %54, i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = call %struct.TYPE_15__* @G(i32* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @isdead(%struct.TYPE_15__* %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @changewhite(i32* %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %4, align 8
  br label %82

70:                                               ; preds = %51, %44, %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32*, i32** %8, align 8
  %73 = call %struct.TYPE_12__* @gch(i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %8, align 8
  br label %32

76:                                               ; preds = %32
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call %struct.TYPE_16__* @newshrstr(i32* %77, i8* %78, i64 %79, i32 %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %4, align 8
  br label %82

82:                                               ; preds = %76, %68
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %83
}

declare dso_local %struct.TYPE_15__* @G(i32*) #1

declare dso_local i32 @luaS_hash(i8*, i64, i32) #1

declare dso_local i64 @lmod(i32, i32) #1

declare dso_local %struct.TYPE_16__* @rawgco2ts(i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @getstr(%struct.TYPE_16__*) #1

declare dso_local i64 @isdead(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @changewhite(i32*) #1

declare dso_local %struct.TYPE_12__* @gch(i32*) #1

declare dso_local %struct.TYPE_16__* @newshrstr(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
