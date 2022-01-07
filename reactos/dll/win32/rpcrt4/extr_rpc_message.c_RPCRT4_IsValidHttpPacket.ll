; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_IsValidHttpPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_IsValidHttpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unimplemented type 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPCRT4_IsValidHttpPacket(%struct.TYPE_5__* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  store i16 0, i16* %8, align 2
  br label %12

12:                                               ; preds = %81, %3
  %13 = load i16, i16* %8, align 2
  %14 = zext i16 %13 to i32
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %12
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %4, align 4
  br label %86

27:                                               ; preds = %21
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %32, i8** %9, align 8
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i64
  %35 = sub i64 %34, 4
  %36 = trunc i64 %35 to i16
  store i16 %36, i16* %7, align 2
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %77 [
    i32 3, label %38
    i32 12, label %38
    i32 0, label %51
    i32 2, label %51
    i32 4, label %51
    i32 5, label %51
    i32 6, label %51
    i32 13, label %51
    i32 1, label %64
  ]

38:                                               ; preds = %27, %27
  %39 = load i16, i16* %7, align 2
  %40 = zext i16 %39 to i64
  %41 = icmp ult i64 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %86

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %9, align 8
  %47 = load i16, i16* %7, align 2
  %48 = zext i16 %47 to i64
  %49 = sub i64 %48, 4
  %50 = trunc i64 %49 to i16
  store i16 %50, i16* %7, align 2
  br label %80

51:                                               ; preds = %27, %27, %27, %27, %27, %27
  %52 = load i16, i16* %7, align 2
  %53 = zext i16 %52 to i64
  %54 = icmp ult i64 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %86

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %9, align 8
  %60 = load i16, i16* %7, align 2
  %61 = zext i16 %60 to i64
  %62 = sub i64 %61, 4
  %63 = trunc i64 %62 to i16
  store i16 %63, i16* %7, align 2
  br label %80

64:                                               ; preds = %27
  %65 = load i16, i16* %7, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp slt i32 %66, 24
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %86

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 24
  store i8* %72, i8** %9, align 8
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 %74, 24
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %7, align 2
  br label %80

77:                                               ; preds = %27
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %70, %57, %44
  br label %81

81:                                               ; preds = %80
  %82 = load i16, i16* %8, align 2
  %83 = add i16 %82, 1
  store i16 %83, i16* %8, align 2
  br label %12

84:                                               ; preds = %12
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %68, %55, %42, %25
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
