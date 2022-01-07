; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_check_messages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_check_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DP_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@DPERR_NOMESSAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_3__*)* @check_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_messages(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  store i32 1024, i32* %12, align 4
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @HeapAlloc(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %30, %4
  %25 = load i32, i32* @DP_OK, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @IDirectPlayX_Receive(i32* %26, i32* %9, i32* %10, i32 0, i32 %27, i32* %12)
  store i32 %28, i32* %14, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @dpid2char(i32* %31, i32 %32, i32 %33)
  %35 = ptrtoint i8* %34 to i8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 %35, i8* %42, align 1
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @dpid2char(i32* %43, i32 %44, i32 %45)
  %47 = ptrtoint i8* %46 to i8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 3, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8 %47, i8* %55, align 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 3, %59
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8 44, i8* %63, align 1
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %71 = call i32 @strcat(i8* %69, i8* %70)
  store i32 1024, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %24

74:                                               ; preds = %24
  %75 = load i32, i32* @DPERR_NOMESSAGES, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @checkHR(i32 %75, i32 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 3, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = call i32 (...) @GetProcessHeap()
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @HeapFree(i32 %88, i32 0, i32 %89)
  ret void
}

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IDirectPlayX_Receive(i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i8* @dpid2char(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @checkHR(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
