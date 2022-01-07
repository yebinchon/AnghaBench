; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_colcache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_colcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [22 x i8] c"COLCACHE(id=%d,n=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @process_colcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_colcache(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @in_uint8(i32 %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @in_uint16_le(i32 %13, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 24, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 4
  %33 = call i32 @in_uint8s(i32 %29, i32 %32)
  br label %85

34:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @in_uint8(i32 %46, i64 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @in_uint8(i32 %51, i64 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @in_uint8(i32 %56, i64 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @in_uint8s(i32 %61, i32 1)
  br label %63

63:                                               ; preds = %40
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @DEBUG(i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @ui_create_colourmap(i32* %73, %struct.TYPE_5__* %6)
  store i32 %74, i32* %7, align 4
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ui_set_colourmap(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %66
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @free(%struct.TYPE_6__* %83)
  br label %85

85:                                               ; preds = %81, %28
  ret void
}

declare dso_local i32 @in_uint8(i32, i64) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @ui_create_colourmap(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ui_set_colourmap(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
