; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_forget.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { i64, i64, i64, i64, %struct.buffy*, i32* }
%struct.buffy = type { i64, i64, %struct.buffy* }

@.str = private unnamed_addr constant [29 x i8] c"bc_forget: block %lu pos %lu\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"forget with nothing there!\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"bc_forget: forgot %p with %lu, pos=%li, size=%li, fileoff=%li\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferchain*)* @bc_forget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bc_forget(%struct.bufferchain* %0) #0 {
  %2 = alloca %struct.bufferchain*, align 8
  %3 = alloca %struct.buffy*, align 8
  %4 = alloca %struct.buffy*, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %2, align 8
  %5 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %6 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %5, i32 0, i32 4
  %7 = load %struct.buffy*, %struct.buffy** %6, align 8
  store %struct.buffy* %7, %struct.buffy** %3, align 8
  %8 = load %struct.buffy*, %struct.buffy** %3, align 8
  %9 = icmp ne %struct.buffy* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.buffy*, %struct.buffy** %3, align 8
  %12 = getelementptr inbounds %struct.buffy, %struct.buffy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %15 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @debug2(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %16)
  br label %20

18:                                               ; preds = %1
  %19 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %10
  br label %21

21:                                               ; preds = %43, %20
  %22 = load %struct.buffy*, %struct.buffy** %3, align 8
  %23 = icmp ne %struct.buffy* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %26 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.buffy*, %struct.buffy** %3, align 8
  %29 = getelementptr inbounds %struct.buffy, %struct.buffy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i1 [ false, %21 ], [ %31, %24 ]
  br i1 %33, label %34, label %86

34:                                               ; preds = %32
  %35 = load %struct.buffy*, %struct.buffy** %3, align 8
  %36 = getelementptr inbounds %struct.buffy, %struct.buffy* %35, i32 0, i32 2
  %37 = load %struct.buffy*, %struct.buffy** %36, align 8
  store %struct.buffy* %37, %struct.buffy** %4, align 8
  %38 = load %struct.buffy*, %struct.buffy** %4, align 8
  %39 = icmp eq %struct.buffy* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %42 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %41, i32 0, i32 5
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.buffy*, %struct.buffy** %3, align 8
  %45 = getelementptr inbounds %struct.buffy, %struct.buffy* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %48 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.buffy*, %struct.buffy** %3, align 8
  %52 = getelementptr inbounds %struct.buffy, %struct.buffy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %55 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.buffy*, %struct.buffy** %3, align 8
  %59 = getelementptr inbounds %struct.buffy, %struct.buffy* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %62 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.buffy*, %struct.buffy** %3, align 8
  %66 = getelementptr inbounds %struct.buffy, %struct.buffy* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.buffy*, %struct.buffy** %3, align 8
  %70 = getelementptr inbounds %struct.buffy, %struct.buffy* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %73 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %76 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %79 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @debug5(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %68, i64 %71, i64 %74, i64 %77, i64 %80)
  %82 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %83 = load %struct.buffy*, %struct.buffy** %3, align 8
  %84 = call i32 @bc_free(%struct.bufferchain* %82, %struct.buffy* %83)
  %85 = load %struct.buffy*, %struct.buffy** %4, align 8
  store %struct.buffy* %85, %struct.buffy** %3, align 8
  br label %21

86:                                               ; preds = %32
  %87 = load %struct.buffy*, %struct.buffy** %3, align 8
  %88 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %89 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %88, i32 0, i32 4
  store %struct.buffy* %87, %struct.buffy** %89, align 8
  %90 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %91 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %94 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  ret void
}

declare dso_local i32 @debug2(i8*, i64, i64) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug5(i8*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @bc_free(%struct.bufferchain*, %struct.buffy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
