; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_requests.c_friendreq_handlepacket.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_requests.c_friendreq_handlepacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 (i64*, i32)*, i32, i32, i32 (i32, i64*, i64*, i32, i32)*, i32, i32 }

@ONION_CLIENT_MAX_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32)* @friendreq_handlepacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friendreq_handlepacket(i8* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ule i64 %17, 5
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ONION_CLIENT_MAX_DATA_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %4
  store i32 1, i32* %5, align 4
  br label %97

24:                                               ; preds = %19
  %25 = load i64*, i64** %8, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %97

34:                                               ; preds = %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call i64 @request_received(%struct.TYPE_4__* %35, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %97

40:                                               ; preds = %34
  %41 = load i64*, i64** %8, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  %44 = call i64 @memcmp(i64* %41, i32* %43, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %97

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64 (i64*, i32)*, i64 (i64*, i32)** %49, align 8
  %51 = icmp ne i64 (i64*, i32)* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64 (i64*, i32)*, i64 (i64*, i32)** %54, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i64 %55(i64* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %97

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = call i32 @addto_receivedlist(%struct.TYPE_4__* %65, i64* %66)
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = call i8* @llvm.stacksave()
  store i8* %75, i8** %12, align 8
  %76 = alloca i64, i64 %74, align 16
  store i64 %74, i64* %13, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @memcpy(i64* %76, i64* %78, i32 %79)
  %81 = mul nuw i64 8, %74
  %82 = sub i64 %81, 1
  %83 = getelementptr inbounds i64, i64* %76, i64 %82
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i32 (i32, i64*, i64*, i32, i32)*, i32 (i32, i64*, i64*, i32, i32)** %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %86(i32 %89, i64* %90, i64* %76, i32 %91, i32 %94)
  store i32 0, i32* %5, align 4
  %96 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %96)
  br label %97

97:                                               ; preds = %64, %62, %46, %39, %33, %23
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @request_received(%struct.TYPE_4__*, i64*) #1

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

declare dso_local i32 @addto_receivedlist(%struct.TYPE_4__*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
