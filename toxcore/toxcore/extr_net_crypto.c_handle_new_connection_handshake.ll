; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_new_connection_handshake.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_handle_new_connection_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (i32, %struct.TYPE_13__*)*, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32 }

@COOKIE_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_CONN_COOKIE_REQUESTING = common dso_local global i64 0, align 8
@CRYPTO_CONN_HANDSHAKE_SENT = common dso_local global i64 0, align 8
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@CRYPTO_CONN_NOT_CONFIRMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*, i32)* @handle_new_connection_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new_connection_handshake(%struct.TYPE_14__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @COOKIE_LENGTH, align 4
  %16 = call i32* @malloc(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %143

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @COOKIE_LENGTH, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @handle_crypto_handshake(%struct.TYPE_14__* %27, i32 %29, i32 %31, i32 %33, i32 %35, i32* %37, i32* %38, i32 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @free(i32* %44)
  store i32 -1, i32* %5, align 4
  br label %143

46:                                               ; preds = %22
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @getcryptconnection_id(%struct.TYPE_14__* %47, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %131

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.TYPE_15__* @get_crypto_connection(%struct.TYPE_14__* %54, i32 %55)
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @public_key_cmp(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @connection_kill(%struct.TYPE_14__* %65, i32 %66)
  br label %130

68:                                               ; preds = %53
  store i32 -1, i32* %13, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %125

71:                                               ; preds = %68
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CRYPTO_CONN_COOKIE_REQUESTING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CRYPTO_CONN_HANDSHAKE_SENT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %125

83:                                               ; preds = %77, %71
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %90 = call i32 @memcpy(i32 %86, i32 %88, i32 %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %97 = call i32 @memcpy(i32 %93, i32 %95, i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @encrypt_precompute(i32 %100, i32 %103, i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @crypto_connection_add_source(%struct.TYPE_14__* %108, i32 %109, i32 %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @create_send_handshake(%struct.TYPE_14__* %112, i32 %113, i32* %115, i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %83
  %121 = load i64, i64* @CRYPTO_CONN_NOT_CONFIRMED, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %120, %83
  br label %125

125:                                              ; preds = %124, %77, %68
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @free(i32* %127)
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %5, align 4
  br label %143

130:                                              ; preds = %64
  br label %131

131:                                              ; preds = %130, %46
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32 (i32, %struct.TYPE_13__*)*, i32 (i32, %struct.TYPE_13__*)** %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %134(i32 %137, %struct.TYPE_13__* %10)
  store i32 %138, i32* %14, align 4
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @free(i32* %140)
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %131, %125, %42, %21
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @handle_crypto_handshake(%struct.TYPE_14__*, i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @getcryptconnection_id(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_15__* @get_crypto_connection(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @public_key_cmp(i32, i32) #1

declare dso_local i32 @connection_kill(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @encrypt_precompute(i32, i32, i32) #1

declare dso_local i32 @crypto_connection_add_source(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @create_send_handshake(%struct.TYPE_14__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
