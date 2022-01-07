; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_l2tp-tunnel.c_config_parse_l2tp_tunnel_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_l2tp-tunnel.c_config_parse_l2tp_tunnel_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%union.in_addr_union = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@NETDEV_L2TP_LOCAL_ADDRESS_AUTO = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@IN_ADDR_NULL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Invalid L2TP Tunnel address specified in %s='%s', ignoring assignment: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_l2tp_tunnel_address(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca %union.in_addr_union*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %26 = load i8*, i8** %21, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %22, align 8
  %28 = load i8*, i8** %20, align 8
  %29 = bitcast i8* %28 to %union.in_addr_union*
  store %union.in_addr_union* %29, %union.in_addr_union** %23, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = call i32 @assert(i8* %34)
  %36 = load i8*, i8** %20, align 8
  %37 = call i32 @assert(i8* %36)
  %38 = load i8*, i8** %17, align 8
  %39 = call i64 @streq(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %10
  %42 = load i8*, i8** %19, align 8
  %43 = call i64 @isempty(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @NETDEV_L2TP_LOCAL_ADDRESS_AUTO, align 8
  store i64 %46, i64* %25, align 8
  br label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %19, align 8
  %49 = call i64 @l2tp_local_address_type_from_string(i8* %48)
  store i64 %49, i64* %25, align 8
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i64, i64* %25, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = call i64 @in_addr_is_null(i64 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i64, i64* @AF_UNSPEC, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* @IN_ADDR_NULL, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %25, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %11, align 4
  br label %105

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72, %10
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AF_UNSPEC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i8*, i8** %19, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %union.in_addr_union*, %union.in_addr_union** %23, align 8
  %84 = call i32 @in_addr_from_string_auto(i8* %80, i64* %82, %union.in_addr_union* %83)
  store i32 %84, i32* %24, align 4
  br label %92

85:                                               ; preds = %73
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %19, align 8
  %90 = load %union.in_addr_union*, %union.in_addr_union** %23, align 8
  %91 = call i32 @in_addr_from_string(i64 %88, i8* %89, %union.in_addr_union* %90)
  store i32 %91, i32* %24, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load i32, i32* %24, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* @LOG_ERR, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i8*, i8** %17, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = call i32 @log_syntax(i8* %96, i32 %97, i8* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %101, i8* %102)
  store i32 0, i32* %11, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %95, %65
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @l2tp_local_address_type_from_string(i8*) #1

declare dso_local i64 @in_addr_is_null(i64, i32*) #1

declare dso_local i32 @in_addr_from_string_auto(i8*, i64*, %union.in_addr_union*) #1

declare dso_local i32 @in_addr_from_string(i64, i8*, %union.in_addr_union*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
