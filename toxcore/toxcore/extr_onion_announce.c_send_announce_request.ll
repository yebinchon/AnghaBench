; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_send_announce_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_announce.c_send_announce_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ONION_ANNOUNCE_REQUEST_SIZE = common dso_local global i32 0, align 4
@ONION_MAX_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_announce_request(i32* %0, %struct.TYPE_6__* %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = bitcast %struct.TYPE_7__* %11 to i64*
  store i64 %2, i64* %25, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %26 = load i32, i32* @ONION_ANNOUNCE_REQUEST_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %20, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %21, align 8
  %30 = mul nuw i64 4, %27
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @create_announce_request(i32* %29, i32 %31, i32 %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32 %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nuw i64 4, %27
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %72

46:                                               ; preds = %9
  %47 = load i32, i32* @ONION_MAX_PACKET_SIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %24, align 8
  %50 = mul nuw i64 4, %48
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nuw i64 4, %27
  %56 = trunc i64 %55 to i32
  %57 = call i32 @create_onion_packet(i32* %49, i32 %51, %struct.TYPE_6__* %52, i32 %54, i32* %29, i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %72

61:                                               ; preds = %46
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %22, align 4
  %67 = call i32 @sendpacket(i32* %62, i32 %65, i32* %49, i32 %66)
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %72

71:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  store i32 1, i32* %23, align 4
  br label %72

72:                                               ; preds = %71, %70, %60, %45
  %73 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_announce_request(i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @create_onion_packet(i32*, i32, %struct.TYPE_6__*, i32, i32*, i32) #2

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
