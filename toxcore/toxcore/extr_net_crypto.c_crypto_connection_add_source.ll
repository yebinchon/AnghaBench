; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_crypto_connection_add_source.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_crypto_connection_add_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_16__ = type { i32, i8*, i8* }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@TCP_FAMILY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64, i32*)* @crypto_connection_add_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_connection_add_source(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = bitcast %struct.TYPE_15__* %6 to { i64, i32* }*
  %11 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %10, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %10, i32 0, i32 1
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.TYPE_16__* @get_crypto_connection(%struct.TYPE_14__* %13, i32 %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %82

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25, %19
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = bitcast %struct.TYPE_15__* %6 to { i64, i32* }*
  %35 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %34, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @add_ip_port_connection(%struct.TYPE_14__* %32, i32 %33, i64 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %82

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i8* (...) @unix_time()
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %56

52:                                               ; preds = %42
  %53 = call i8* (...) @unix_time()
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  store i32 0, i32* %5, align 4
  br label %82

57:                                               ; preds = %25
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TCP_FAMILY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @add_tcp_number_relay_connection(i32 %66, i32 %69, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %82

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %57
  br label %81

81:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %78, %56, %41, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_16__* @get_crypto_connection(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @add_ip_port_connection(%struct.TYPE_14__*, i32, i64, i32*) #1

declare dso_local i8* @unix_time(...) #1

declare dso_local i64 @add_tcp_number_relay_connection(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
