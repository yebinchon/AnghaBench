; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_mem.c_plug_holes.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_mem.c_plug_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"plug_holes: mem >= ram\00", align 1
@ram = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"plug_holes: mem < ram_end\00", align 1
@ram_end = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"plug_holes: mem->used == 0\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"plug_holes: mem->next <= MEM_SIZE_ALIGNED\00", align 1
@MEM_SIZE_ALIGNED = common dso_local global i64 0, align 8
@lfree = common dso_local global %struct.mem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem*)* @plug_holes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plug_holes(%struct.mem* %0) #0 {
  %2 = alloca %struct.mem*, align 8
  %3 = alloca %struct.mem*, align 8
  %4 = alloca %struct.mem*, align 8
  store %struct.mem* %0, %struct.mem** %2, align 8
  %5 = load %struct.mem*, %struct.mem** %2, align 8
  %6 = bitcast %struct.mem* %5 to i32*
  %7 = load i32*, i32** @ram, align 8
  %8 = icmp uge i32* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.mem*, %struct.mem** %2, align 8
  %12 = bitcast %struct.mem* %11 to i32*
  %13 = load i64, i64* @ram_end, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = icmp ult i32* %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.mem*, %struct.mem** %2, align 8
  %19 = getelementptr inbounds %struct.mem, %struct.mem* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.mem*, %struct.mem** %2, align 8
  %25 = getelementptr inbounds %struct.mem, %struct.mem* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MEM_SIZE_ALIGNED, align 8
  %28 = icmp ule i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** @ram, align 8
  %32 = load %struct.mem*, %struct.mem** %2, align 8
  %33 = getelementptr inbounds %struct.mem, %struct.mem* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = bitcast i32* %35 to i8*
  %37 = bitcast i8* %36 to %struct.mem*
  store %struct.mem* %37, %struct.mem** %3, align 8
  %38 = load %struct.mem*, %struct.mem** %2, align 8
  %39 = load %struct.mem*, %struct.mem** %3, align 8
  %40 = icmp ne %struct.mem* %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %1
  %42 = load %struct.mem*, %struct.mem** %3, align 8
  %43 = getelementptr inbounds %struct.mem, %struct.mem* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load %struct.mem*, %struct.mem** %3, align 8
  %48 = bitcast %struct.mem* %47 to i32*
  %49 = load i64, i64* @ram_end, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = icmp ne i32* %48, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %46
  %53 = load %struct.mem*, %struct.mem** @lfree, align 8
  %54 = load %struct.mem*, %struct.mem** %3, align 8
  %55 = icmp eq %struct.mem* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.mem*, %struct.mem** %2, align 8
  store %struct.mem* %57, %struct.mem** @lfree, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.mem*, %struct.mem** %3, align 8
  %60 = getelementptr inbounds %struct.mem, %struct.mem* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mem*, %struct.mem** %2, align 8
  %63 = getelementptr inbounds %struct.mem, %struct.mem* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mem*, %struct.mem** %2, align 8
  %65 = bitcast %struct.mem* %64 to i32*
  %66 = load i32*, i32** @ram, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = inttoptr i64 %70 to i8*
  %72 = ptrtoint i8* %71 to i64
  %73 = load i32*, i32** @ram, align 8
  %74 = load %struct.mem*, %struct.mem** %3, align 8
  %75 = getelementptr inbounds %struct.mem, %struct.mem* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = bitcast i32* %77 to i8*
  %79 = bitcast i8* %78 to %struct.mem*
  %80 = getelementptr inbounds %struct.mem, %struct.mem* %79, i32 0, i32 2
  store i64 %72, i64* %80, align 8
  br label %81

81:                                               ; preds = %58, %46, %41, %1
  %82 = load i32*, i32** @ram, align 8
  %83 = load %struct.mem*, %struct.mem** %2, align 8
  %84 = getelementptr inbounds %struct.mem, %struct.mem* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = bitcast i32* %86 to i8*
  %88 = bitcast i8* %87 to %struct.mem*
  store %struct.mem* %88, %struct.mem** %4, align 8
  %89 = load %struct.mem*, %struct.mem** %4, align 8
  %90 = load %struct.mem*, %struct.mem** %2, align 8
  %91 = icmp ne %struct.mem* %89, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %81
  %93 = load %struct.mem*, %struct.mem** %4, align 8
  %94 = getelementptr inbounds %struct.mem, %struct.mem* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %92
  %98 = load %struct.mem*, %struct.mem** @lfree, align 8
  %99 = load %struct.mem*, %struct.mem** %2, align 8
  %100 = icmp eq %struct.mem* %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load %struct.mem*, %struct.mem** %4, align 8
  store %struct.mem* %102, %struct.mem** @lfree, align 8
  br label %103

103:                                              ; preds = %101, %97
  %104 = load %struct.mem*, %struct.mem** %2, align 8
  %105 = getelementptr inbounds %struct.mem, %struct.mem* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.mem*, %struct.mem** %4, align 8
  %108 = getelementptr inbounds %struct.mem, %struct.mem* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.mem*, %struct.mem** %4, align 8
  %110 = bitcast %struct.mem* %109 to i32*
  %111 = load i32*, i32** @ram, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = inttoptr i64 %115 to i8*
  %117 = ptrtoint i8* %116 to i64
  %118 = load i32*, i32** @ram, align 8
  %119 = load %struct.mem*, %struct.mem** %2, align 8
  %120 = getelementptr inbounds %struct.mem, %struct.mem* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = bitcast i32* %122 to i8*
  %124 = bitcast i8* %123 to %struct.mem*
  %125 = getelementptr inbounds %struct.mem, %struct.mem* %124, i32 0, i32 2
  store i64 %117, i64* %125, align 8
  br label %126

126:                                              ; preds = %103, %92, %81
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
