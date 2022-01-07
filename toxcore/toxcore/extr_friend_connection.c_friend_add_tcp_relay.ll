; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_friend_add_tcp_relay.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_friend_add_tcp_relay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__*, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }

@FRIEND_MAX_STORED_TCP_RELAYS = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @friend_add_tcp_relay(%struct.TYPE_15__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i64 %2, i64* %14, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.TYPE_16__* @get_conn(%struct.TYPE_15__* %15, i32 %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %10, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %133

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @Local_ip(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @public_key_cmp(i32 %30, i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_12__* %42 to i8*
  %47 = bitcast %struct.TYPE_12__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  br label %51

48:                                               ; preds = %34
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %27, %21
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FRIEND_MAX_STORED_TCP_RELAYS, align 4
  %57 = urem i32 %55, %56
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %96, %52
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @FRIEND_MAX_STORED_TCP_RELAYS, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %59
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %63
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @public_key_cmp(i32 %83, i32* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %75
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i64 %92
  %94 = call i32 @memset(%struct.TYPE_17__* %93, i32 0, i32 4)
  br label %95

95:                                               ; preds = %87, %75, %63
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %59

99:                                               ; preds = %59
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = bitcast %struct.TYPE_14__* %105 to i8*
  %107 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 8, i1 false)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %117 = call i32 @memcpy(i32 %114, i32* %115, i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @add_tcp_relay_peer(i32 %124, i32 %127, i64 %131, i32* %128)
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %99, %20
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_16__* @get_conn(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @Local_ip(i64) #1

declare dso_local i64 @public_key_cmp(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @add_tcp_relay_peer(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
