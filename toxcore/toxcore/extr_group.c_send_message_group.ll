; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_message_group.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_message_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@MAX_GROUP_MESSAGE_DATA_LEN = common dso_local global i32 0, align 4
@GROUPCHAT_STATUS_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32)* @send_message_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_group(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MAX_GROUP_MESSAGE_DATA_LEN, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_3__* @get_group_c(i32* %22, i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %84

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GROUPCHAT_STATUS_CONNECTED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %84

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 9, %37
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %13, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htons(i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = call i32 @memcpy(i32* %40, i32* %15, i32 4)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %35
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %54, %35
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @htonl(i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = getelementptr inbounds i32, i32* %40, i64 4
  %65 = call i32 @memcpy(i32* %64, i32* %16, i32 4)
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds i32, i32* %40, i64 8
  store i32 %66, i32* %67, align 16
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = getelementptr inbounds i32, i32* %40, i64 4
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @memcpy(i32* %73, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %59
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nuw i64 4, %38
  %81 = trunc i64 %80 to i32
  %82 = call i32 @send_message_all_close(i32* %78, i32 %79, i32* %40, i32 %81, i32 -1)
  store i32 %82, i32* %6, align 4
  %83 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %84

84:                                               ; preds = %77, %34, %27, %20
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_3__* @get_group_c(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @send_message_all_close(i32*, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
