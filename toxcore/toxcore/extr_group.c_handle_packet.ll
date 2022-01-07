; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKET_ID_ONLINE_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_packet(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 6
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %94

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PACKET_ID_ONLINE_PACKET, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @handle_packet_online(i32* %27, i32 %28, i32* %30, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %20
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 129
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %94

45:                                               ; preds = %39, %34
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @memcpy(i32* %11, i32* %47, i32 4)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ntohs(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32* @get_group_c(i32* %51, i32 %52)
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %94

57:                                               ; preds = %45
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @friend_in_close(i32* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %94

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %92 [
    i32 129, label %68
    i32 128, label %80
  ]

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 5
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @handle_direct_packet(i32* %69, i32 %70, i32* %73, i32 %77, i32 %78)
  br label %93

80:                                               ; preds = %64
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 %87, 5
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @handle_message_packet_group(i32* %81, i32 %82, i32* %85, i32 %89, i32 %90)
  br label %93

92:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %94

93:                                               ; preds = %80, %68
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92, %63, %56, %44, %26, %19
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @handle_packet_online(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32* @get_group_c(i32*, i32) #1

declare dso_local i32 @friend_in_close(i32*, i32) #1

declare dso_local i32 @handle_direct_packet(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @handle_message_packet_group(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
