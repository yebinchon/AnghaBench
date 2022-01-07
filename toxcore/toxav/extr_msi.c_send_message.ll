; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_send_message.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_msi.c_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@MSI_MAXMSG_SIZE = common dso_local global i32 0, align 4
@IDRequest = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Must have request field\00", align 1
@IDError = common dso_local global i32 0, align 4
@IDCapabilities = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Parsing message failed; empty message\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Sent message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_message(i32* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32, i32* @MSI_MAXMSG_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i64* %20, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i32, i32* @IDRequest, align 4
  %32 = load i64*, i64** %10, align 8
  %33 = call i64* @msg_parse_header_out(i32 %31, i64* %32, i64* %12, i32 8, i64* %11)
  store i64* %33, i64** %10, align 8
  br label %36

34:                                               ; preds = %3
  %35 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

36:                                               ; preds = %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %14, align 8
  %47 = load i32, i32* @IDError, align 4
  %48 = load i64*, i64** %10, align 8
  %49 = call i64* @msg_parse_header_out(i32 %47, i64* %48, i64* %14, i32 8, i64* %11)
  store i64* %49, i64** %10, align 8
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @IDCapabilities, align 4
  %58 = load i64*, i64** %10, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i64* @msg_parse_header_out(i32 %57, i64* %58, i64* %61, i32 8, i64* %11)
  store i64* %62, i64** %10, align 8
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i64*, i64** %10, align 8
  %65 = icmp eq i64* %64, %20
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

68:                                               ; preds = %63
  %69 = load i64*, i64** %10, align 8
  store i64 0, i64* %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %11, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @m_msi_packet(i32* %72, i32 %73, i64* %20, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

79:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %79, %77, %66, %34
  %81 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64* @msg_parse_header_out(i32, i64*, i64*, i32, i64*) #1

declare dso_local i32 @LOGGER_DEBUG(i8*) #1

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i64 @m_msi_packet(i32*, i32, i64*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
