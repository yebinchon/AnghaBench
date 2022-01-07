; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_open_request.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_open_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.request_package = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"socket-server : Invalid addr %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_package*, i64, i8*, i32)* @open_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_request(%struct.socket_server* %0, %struct.request_package* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_server*, align 8
  %8 = alloca %struct.request_package*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %7, align 8
  store %struct.request_package* %1, %struct.request_package** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 24
  %19 = icmp uge i64 %18, 256
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %6, align 4
  br label %63

24:                                               ; preds = %5
  %25 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %26 = call i32 @reserve_id(%struct.socket_server* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %63

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.request_package*, %struct.request_package** %8, align 8
  %33 = getelementptr inbounds %struct.request_package, %struct.request_package* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.request_package*, %struct.request_package** %8, align 8
  %38 = getelementptr inbounds %struct.request_package, %struct.request_package* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.request_package*, %struct.request_package** %8, align 8
  %43 = getelementptr inbounds %struct.request_package, %struct.request_package* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 4
  %46 = load %struct.request_package*, %struct.request_package** %8, align 8
  %47 = getelementptr inbounds %struct.request_package, %struct.request_package* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  %54 = load %struct.request_package*, %struct.request_package** %8, align 8
  %55 = getelementptr inbounds %struct.request_package, %struct.request_package* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %30, %29, %20
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @reserve_id(%struct.socket_server*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
