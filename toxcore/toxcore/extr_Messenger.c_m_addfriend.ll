; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_m_addfriend.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_m_addfriend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i64*, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_FRIEND_REQUEST_DATA_SIZE = common dso_local global i64 0, align 8
@FAERR_TOOLONG = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@FAERR_BADCHECKSUM = common dso_local global i32 0, align 4
@FRIEND_ADDRESS_SIZE = common dso_local global i64 0, align 8
@FAERR_NOMESSAGE = common dso_local global i32 0, align 4
@FAERR_OWNKEY = common dso_local global i32 0, align 4
@FRIEND_CONFIRMED = common dso_local global i64 0, align 8
@FAERR_ALREADYSENT = common dso_local global i32 0, align 4
@FAERR_SETNEWNOSPAM = common dso_local global i32 0, align 4
@FRIEND_ADDED = common dso_local global i32 0, align 4
@FRIENDREQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_addfriend(%struct.TYPE_9__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @MAX_FRIEND_REQUEST_DATA_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @FAERR_TOOLONG, align 4
  store i32 %22, i32* %5, align 4
  br label %163

23:                                               ; preds = %4
  %24 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @id_copy(i32* %27, i32* %28)
  %30 = call i32 @public_key_valid(i32* %27)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @FAERR_BADCHECKSUM, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* @FRIEND_ADDRESS_SIZE, align 8
  %37 = sub i64 %36, 8
  %38 = call i64 @address_checksum(i32* %35, i64 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  %44 = call i32 @memcpy(i64* %13, i32* %43, i32 8)
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @FAERR_BADCHECKSUM, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

50:                                               ; preds = %34
  %51 = load i64, i64* %9, align 8
  %52 = icmp slt i64 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @FAERR_NOMESSAGE, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @id_equal(i32* %27, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @FAERR_OWNKEY, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

65:                                               ; preds = %55
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = call i32 @getfriend_id(%struct.TYPE_9__* %66, i32* %27)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %111

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FRIEND_CONFIRMED, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* @FAERR_ALREADYSENT, align 4
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

83:                                               ; preds = %70
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @memcpy(i64* %16, i32* %87, i32 8)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* @FAERR_ALREADYSENT, align 4
  store i32 %100, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

101:                                              ; preds = %83
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i64 %102, i64* %109, align 8
  %110 = load i32, i32* @FAERR_SETNEWNOSPAM, align 4
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

111:                                              ; preds = %65
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = load i32, i32* @FRIEND_ADDED, align 4
  %114 = call i32 @init_new_friend(%struct.TYPE_9__* %112, i32* %27, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

119:                                              ; preds = %111
  %120 = load i32, i32* @FRIENDREQUEST_TIMEOUT, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  store i32 %120, i32* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memcpy(i64* %135, i32* %136, i32 %138)
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  store i64 %140, i64* %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @memcpy(i64* %154, i32* %158, i32 8)
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %161

161:                                              ; preds = %119, %117, %101, %99, %81, %63, %53, %48, %32
  %162 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %162)
  br label %163

163:                                              ; preds = %161, %21
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @id_copy(i32*, i32*) #2

declare dso_local i32 @public_key_valid(i32*) #2

declare dso_local i64 @address_checksum(i32*, i64) #2

declare dso_local i32 @memcpy(i64*, i32*, i32) #2

declare dso_local i64 @id_equal(i32*, i32) #2

declare dso_local i32 @getfriend_id(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @init_new_friend(%struct.TYPE_9__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
