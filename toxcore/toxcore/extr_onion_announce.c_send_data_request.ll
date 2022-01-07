; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_send_data_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_send_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ONION_MAX_DATA_SIZE = common dso_local global i32 0, align 4
@ONION_MAX_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_data_request(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* @ONION_MAX_DATA_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = mul nuw i64 4, %24
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @create_data_request(i32* %26, i32 %28, i32* %29, i32* %30, i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %21, align 4
  br label %62

38:                                               ; preds = %8
  %39 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %22, align 8
  %42 = mul nuw i64 4, %40
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @create_onion_packet(i32* %41, i32 %43, %struct.TYPE_4__* %44, i32 %45, i32* %26, i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %21, align 4
  br label %62

51:                                               ; preds = %38
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @sendpacket(i32* %52, i32 %55, i32* %41, i32 %56)
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %21, align 4
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  store i32 1, i32* %21, align 4
  br label %62

62:                                               ; preds = %61, %60, %50, %37
  %63 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_data_request(i32*, i32, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @create_onion_packet(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32) #2

declare dso_local i32 @sendpacket(i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
