; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_do_confirmed_TCP.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_do_confirmed_TCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i64, i64 }

@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@TCP_PING_FREQUENCY = common dso_local global i32 0, align 4
@TCP_PING_TIMEOUT = common dso_local global i32 0, align 4
@TCP_CLIENT_DISCONNECTED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @do_confirmed_TCP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_confirmed_TCP(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call i32 @send_pending_data(%struct.TYPE_7__* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32 @send_ping_response(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @send_ping_request(%struct.TYPE_7__* %13)
  %15 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TCP_PING_FREQUENCY, align 4
  %23 = call i64 @is_timeout(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = call i64 (...) @random_64b()
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 6
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 7
  store i64 %33, i64* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 @send_ping_request(%struct.TYPE_7__* %38)
  %40 = call i32 (...) @unix_time()
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %32, %1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TCP_PING_TIMEOUT, align 4
  %53 = call i64 @is_timeout(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i8*, i8** @TCP_CLIENT_DISCONNECTED, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %94

59:                                               ; preds = %48, %43
  br label %60

60:                                               ; preds = %92, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = mul nuw i64 4, %16
  %73 = trunc i64 %72 to i32
  %74 = call i32 @read_packet_TCP_secure_connection(i32 %63, i32* %65, i32 %68, i32 %71, i32* %18, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %60
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** @TCP_CLIENT_DISCONNECTED, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %93

83:                                               ; preds = %76
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @handle_TCP_packet(%struct.TYPE_7__* %84, i32* %18, i32 %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i8*, i8** @TCP_CLIENT_DISCONNECTED, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %93

92:                                               ; preds = %83
  br label %60

93:                                               ; preds = %88, %79, %60
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @send_pending_data(%struct.TYPE_7__*) #1

declare dso_local i32 @send_ping_response(%struct.TYPE_7__*) #1

declare dso_local i32 @send_ping_request(%struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i64 @random_64b(...) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @read_packet_TCP_secure_connection(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @handle_TCP_packet(%struct.TYPE_7__*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
