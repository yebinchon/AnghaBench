; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_m_send_message_generic.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_m_send_message_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@MESSAGE_ACTION = common dso_local global i64 0, align 8
@MAX_CRYPTO_DATA_SIZE = common dso_local global i64 0, align 8
@FRIEND_ONLINE = common dso_local global i64 0, align 8
@PACKET_ID_MESSAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_send_message_generic(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @MESSAGE_ACTION, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 -5, i32* %7, align 4
  br label %104

23:                                               ; preds = %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @friend_not_valid(%struct.TYPE_7__* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %104

29:                                               ; preds = %23
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @MAX_CRYPTO_DATA_SIZE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -2, i32* %7, align 4
  br label %104

34:                                               ; preds = %29
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FRIEND_ONLINE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -3, i32* %7, align 4
  br label %104

45:                                               ; preds = %34
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %14, align 8
  %49 = alloca i64, i64 %47, align 16
  store i64 %47, i64* %15, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @PACKET_ID_MESSAGE, align 8
  %52 = add nsw i64 %50, %51
  %53 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %52, i64* %53, align 16
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = getelementptr inbounds i64, i64* %49, i64 1
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @memcpy(i64* %57, i64* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %45
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @friend_connection_crypt_connection_id(i32 %67, i32 %74)
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 1
  %78 = call i32 @write_cryptpacket(i32 %64, i32 %75, i64* %49, i64 %77, i32 0)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  store i32 -4, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %102

82:                                               ; preds = %61
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  store i64 %90, i64* %18, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @add_receipt(%struct.TYPE_7__* %91, i64 %92, i32 %93, i64 %94)
  %96 = load i64*, i64** %13, align 8
  %97 = icmp ne i64* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load i64, i64* %18, align 8
  %100 = load i64*, i64** %13, align 8
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %82
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %102

102:                                              ; preds = %101, %81
  %103 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %102, %44, %33, %28, %22
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_7__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @write_cryptpacket(i32, i32, i64*, i64, i32) #1

declare dso_local i32 @friend_connection_crypt_connection_id(i32, i32) #1

declare dso_local i32 @add_receipt(%struct.TYPE_7__*, i64, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
