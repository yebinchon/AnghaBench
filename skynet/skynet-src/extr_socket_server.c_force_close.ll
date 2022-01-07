; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_force_close.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_force_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32 }
%struct.socket = type { i64, i64, i32*, i32, i32, i32, i32, i32 }
%struct.socket_lock = type { i32 }
%struct.socket_message = type { i32, i32*, i64, i32 }
%struct.socket_sendbuffer = type { i64, i32, i32, i32* }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@SOCKET_TYPE_RESERVE = common dso_local global i64 0, align 8
@SOCKET_TYPE_PACCEPT = common dso_local global i64 0, align 8
@SOCKET_TYPE_PLISTEN = common dso_local global i64 0, align 8
@SOCKET_TYPE_BIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"close socket:\00", align 1
@USEROBJECT = common dso_local global i64 0, align 8
@SOCKET_BUFFER_OBJECT = common dso_local global i32 0, align 4
@SOCKET_BUFFER_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*)* @force_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_close(%struct.socket_server* %0, %struct.socket* %1, %struct.socket_lock* %2, %struct.socket_message* %3) #0 {
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket_lock*, align 8
  %8 = alloca %struct.socket_message*, align 8
  %9 = alloca %struct.socket_sendbuffer, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.socket_lock* %2, %struct.socket_lock** %7, align 8
  store %struct.socket_message* %3, %struct.socket_message** %8, align 8
  %10 = load %struct.socket*, %struct.socket** %6, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.socket_message*, %struct.socket_message** %8, align 8
  %14 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.socket_message*, %struct.socket_message** %8, align 8
  %16 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.socket_message*, %struct.socket_message** %8, align 8
  %18 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.socket_message*, %struct.socket_message** %8, align 8
  %23 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.socket*, %struct.socket** %6, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %121

30:                                               ; preds = %4
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOCKET_TYPE_RESERVE, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %39 = load %struct.socket*, %struct.socket** %6, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 6
  %41 = call i32 @free_wb_list(%struct.socket_server* %38, i32* %40)
  %42 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %43 = load %struct.socket*, %struct.socket** %6, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 5
  %45 = call i32 @free_wb_list(%struct.socket_server* %42, i32* %44)
  %46 = load %struct.socket*, %struct.socket** %6, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SOCKET_TYPE_PACCEPT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %30
  %52 = load %struct.socket*, %struct.socket** %6, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOCKET_TYPE_PLISTEN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %59 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.socket*, %struct.socket** %6, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sp_del(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %51, %30
  %66 = load %struct.socket_lock*, %struct.socket_lock** %7, align 8
  %67 = call i32 @socket_lock(%struct.socket_lock* %66)
  %68 = load %struct.socket*, %struct.socket** %6, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOCKET_TYPE_BIND, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.socket*, %struct.socket** %6, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @close(i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %84 = load %struct.socket*, %struct.socket** %6, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.socket*, %struct.socket** %6, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %118

90:                                               ; preds = %82
  %91 = load %struct.socket*, %struct.socket** %6, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %9, i32 0, i32 3
  store i32* %93, i32** %94, align 8
  %95 = load %struct.socket*, %struct.socket** %6, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %9, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  %99 = load %struct.socket*, %struct.socket** %6, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %9, i32 0, i32 2
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %9, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @USEROBJECT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %90
  %108 = load i32, i32* @SOCKET_BUFFER_OBJECT, align 4
  br label %111

109:                                              ; preds = %90
  %110 = load i32, i32* @SOCKET_BUFFER_MEMORY, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %9, i32 0, i32 1
  store i32 %112, i32* %113, align 8
  %114 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %115 = call i32 @free_buffer(%struct.socket_server* %114, %struct.socket_sendbuffer* %9)
  %116 = load %struct.socket*, %struct.socket** %6, align 8
  %117 = getelementptr inbounds %struct.socket, %struct.socket* %116, i32 0, i32 2
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %111, %82
  %119 = load %struct.socket_lock*, %struct.socket_lock** %7, align 8
  %120 = call i32 @socket_unlock(%struct.socket_lock* %119)
  br label %121

121:                                              ; preds = %118, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_wb_list(%struct.socket_server*, i32*) #1

declare dso_local i32 @sp_del(i32, i32) #1

declare dso_local i32 @socket_lock(%struct.socket_lock*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free_buffer(%struct.socket_server*, %struct.socket_sendbuffer*) #1

declare dso_local i32 @socket_unlock(%struct.socket_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
