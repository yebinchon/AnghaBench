; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_config_parse_tunnel_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_config_parse_tunnel_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@IN_ADDR_NULL = common dso_local global %union.in_addr_union zeroinitializer, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Tunnel address \22%s\22 invalid, ignoring assignment: %m\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Tunnel addresses incompatible, ignoring assignment: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_tunnel_address(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %24 = alloca %union.in_addr_union, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  %27 = load i8*, i8** %21, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %22, align 8
  %29 = load i8*, i8** %20, align 8
  %30 = bitcast i8* %29 to %union.in_addr_union*
  store %union.in_addr_union* %30, %union.in_addr_union** %23, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %17, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %20, align 8
  %38 = call i32 @assert(i8* %37)
  %39 = load i8*, i8** %19, align 8
  %40 = call i64 @streq(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %10
  %43 = load %union.in_addr_union*, %union.in_addr_union** %23, align 8
  %44 = bitcast %union.in_addr_union* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 bitcast (%union.in_addr_union* @IN_ADDR_NULL to i8*), i64 4, i1 false)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AF_UNSPEC, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i64 @in_addr_is_null(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i64 @in_addr_is_null(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @AF_UNSPEC, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %58, %50, %42
  store i32 0, i32* %11, align 4
  br label %110

71:                                               ; preds = %10
  %72 = load i8*, i8** %19, align 8
  %73 = call i32 @in_addr_from_string_auto(i8* %72, i32* %26, %union.in_addr_union* %24)
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %25, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %25, align 4
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @log_syntax(i8* %77, i32 %78, i8* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 0, i32* %11, align 4
  br label %110

84:                                               ; preds = %71
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AF_UNSPEC, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %26, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i8*, i8** %19, align 8
  %102 = call i32 @log_syntax(i8* %97, i32 %98, i8* %99, i32 %100, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  store i32 0, i32* %11, align 4
  br label %110

103:                                              ; preds = %90, %84
  %104 = load i32, i32* %26, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %union.in_addr_union*, %union.in_addr_union** %23, align 8
  %108 = bitcast %union.in_addr_union* %107 to i8*
  %109 = bitcast %union.in_addr_union* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %103, %96, %76, %70
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @in_addr_is_null(i32, i32*) #1

declare dso_local i32 @in_addr_from_string_auto(i8*, i32*, %union.in_addr_union*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
