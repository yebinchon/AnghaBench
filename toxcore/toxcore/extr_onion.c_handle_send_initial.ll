; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_handle_send_initial.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion.c_handle_send_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@ONION_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@SEND_1 = common dso_local global i64 0, align 8
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_MACBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64)* @handle_send_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_send_initial(i8* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @ONION_MAX_PACKET_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %90

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @SEND_1, align 8
  %25 = add nsw i64 1, %24
  %26 = icmp sle i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %90

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = call i32 @change_symmetric_key(%struct.TYPE_6__* %29)
  %31 = load i64, i64* @ONION_MAX_PACKET_SIZE, align 8
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @get_shared_key(i32* %38, i32* %36, i32 %43, i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %62 = add nsw i32 1, %61
  %63 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %60, %65
  %67 = call i32 @decrypt_data_symmetric(i32* %36, i32* %51, i32* %59, i64 %66, i32* %33)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %72 = add nsw i32 1, %71
  %73 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @crypto_box_MACBYTES, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %70, %77
  %79 = icmp ne i64 %69, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %88

81:                                               ; preds = %28
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = call i32 @onion_send_1(%struct.TYPE_6__* %82, i32* %33, i32 %83, i32 %84, i32* %86)
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %88

88:                                               ; preds = %81, %80
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  br label %90

90:                                               ; preds = %88, %27, %21
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @change_symmetric_key(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_shared_key(i32*, i32*, i32, i32*) #1

declare dso_local i32 @decrypt_data_symmetric(i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @onion_send_1(%struct.TYPE_6__*, i32*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
