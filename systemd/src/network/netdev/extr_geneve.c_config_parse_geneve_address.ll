; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_geneve.c_config_parse_geneve_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_geneve.c_config_parse_geneve_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.in_addr_union = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"geneve '%s' address is invalid, ignoring assignment: %s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"geneve invalid multicast '%s' address, ignoring assignment: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_geneve_address(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %40 = call i32 @in_addr_from_string_auto(i8* %39, i32* %26, %union.in_addr_union* %24)
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* %25, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %10
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* @LOG_ERR, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %25, align 4
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = call i32 @log_syntax(i8* %44, i32 %45, i8* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  store i32 0, i32* %11, align 4
  br label %72

52:                                               ; preds = %10
  %53 = load i32, i32* %26, align 4
  %54 = call i32 @in_addr_is_multicast(i32 %53, %union.in_addr_union* %24)
  store i32 %54, i32* %25, align 4
  %55 = load i32, i32* %25, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 @log_syntax(i8* %58, i32 %59, i8* %60, i32 %61, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  store i32 0, i32* %11, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* %26, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %union.in_addr_union*, %union.in_addr_union** %23, align 8
  %70 = bitcast %union.in_addr_union* %69 to i8*
  %71 = bitcast %union.in_addr_union* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %65, %57, %43
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @in_addr_from_string_auto(i8*, i32*, %union.in_addr_union*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @in_addr_is_multicast(i32, %union.in_addr_union*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
