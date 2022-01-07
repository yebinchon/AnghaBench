; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_buffer_.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_buffer_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.socket_lock = type { i32 }
%struct.socket_message = type { i32*, i64, i32, i32 }

@SOCKET_CLOSE = common dso_local global i64 0, align 8
@SOCKET_TYPE_HALFCLOSE = common dso_local global i64 0, align 8
@SOCKET_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*)* @send_buffer_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_buffer_(%struct.socket_server* %0, %struct.socket* %1, %struct.socket_lock* %2, %struct.socket_message* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_server*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.socket_lock*, align 8
  %9 = alloca %struct.socket_message*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.socket_lock* %2, %struct.socket_lock** %8, align 8
  store %struct.socket_message* %3, %struct.socket_message** %9, align 8
  %10 = load %struct.socket*, %struct.socket** %7, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 6
  %12 = call i64 @list_uncomplete(%struct.TYPE_3__* %11)
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %18 = load %struct.socket*, %struct.socket** %7, align 8
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 7
  %21 = load %struct.socket_lock*, %struct.socket_lock** %8, align 8
  %22 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %23 = call i64 @send_list(%struct.socket_server* %17, %struct.socket* %18, %struct.TYPE_3__* %20, %struct.socket_lock* %21, %struct.socket_message* %22)
  %24 = load i64, i64* @SOCKET_CLOSE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @SOCKET_CLOSE, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %129

29:                                               ; preds = %4
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %128

35:                                               ; preds = %29
  %36 = load %struct.socket*, %struct.socket** %7, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = load %struct.socket*, %struct.socket** %7, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 6
  %46 = load %struct.socket_lock*, %struct.socket_lock** %8, align 8
  %47 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %48 = call i64 @send_list(%struct.socket_server* %42, %struct.socket* %43, %struct.TYPE_3__* %45, %struct.socket_lock* %46, %struct.socket_message* %47)
  %49 = load i64, i64* @SOCKET_CLOSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i64, i64* @SOCKET_CLOSE, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %129

54:                                               ; preds = %41
  %55 = load %struct.socket*, %struct.socket** %7, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 6
  %57 = call i64 @list_uncomplete(%struct.TYPE_3__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.socket*, %struct.socket** %7, align 8
  %61 = call i32 @raise_uncomplete(%struct.socket* %60)
  store i32 -1, i32* %5, align 4
  br label %129

62:                                               ; preds = %54
  %63 = load %struct.socket*, %struct.socket** %7, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %129

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.socket*, %struct.socket** %7, align 8
  %72 = call i64 @send_buffer_empty(%struct.socket* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.socket*, %struct.socket** %7, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i1 [ false, %70 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %84 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.socket*, %struct.socket** %7, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.socket*, %struct.socket** %7, align 8
  %90 = call i32 @sp_write(i32 %85, i32 %88, %struct.socket* %89, i32 0)
  %91 = load %struct.socket*, %struct.socket** %7, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SOCKET_TYPE_HALFCLOSE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %79
  %97 = load %struct.socket_server*, %struct.socket_server** %6, align 8
  %98 = load %struct.socket*, %struct.socket** %7, align 8
  %99 = load %struct.socket_lock*, %struct.socket_lock** %8, align 8
  %100 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %101 = call i32 @force_close(%struct.socket_server* %97, %struct.socket* %98, %struct.socket_lock* %99, %struct.socket_message* %100)
  %102 = load i64, i64* @SOCKET_CLOSE, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  br label %129

104:                                              ; preds = %79
  %105 = load %struct.socket*, %struct.socket** %7, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %104
  %110 = load %struct.socket*, %struct.socket** %7, align 8
  %111 = getelementptr inbounds %struct.socket, %struct.socket* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.socket*, %struct.socket** %7, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %116 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.socket*, %struct.socket** %7, align 8
  %118 = getelementptr inbounds %struct.socket, %struct.socket* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %121 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %123 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %125 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  %126 = load i32, i32* @SOCKET_WARNING, align 4
  store i32 %126, i32* %5, align 4
  br label %129

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127, %29
  store i32 -1, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %109, %96, %68, %59, %51, %26
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @list_uncomplete(%struct.TYPE_3__*) #1

declare dso_local i64 @send_list(%struct.socket_server*, %struct.socket*, %struct.TYPE_3__*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @raise_uncomplete(%struct.socket*) #1

declare dso_local i64 @send_buffer_empty(%struct.socket*) #1

declare dso_local i32 @sp_write(i32, i32, %struct.socket*, i32) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
