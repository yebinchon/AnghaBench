; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_config_parse_vxlan_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_config_parse_vxlan_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%union.in_addr_union = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"vxlan '%s' address is invalid, ignoring assignment: %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"vxlan %s invalid multicast address, ignoring assignment: %s\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"vxlan %s cannot be a multicast address, ignoring assignment: %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Remote\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_vxlan_address(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %51 = call i32 @log_syntax(i8* %44, i32 %45, i8* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  store i32 0, i32* %11, align 4
  br label %101

52:                                               ; preds = %10
  %53 = load i32, i32* %26, align 4
  %54 = call i32 @in_addr_is_multicast(i32 %53, %union.in_addr_union* %24)
  store i32 %54, i32* %25, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = call i64 @streq(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i32, i32* %25, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* @LOG_ERR, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i8*, i8** %17, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 @log_syntax(i8* %62, i32 %63, i8* %64, i32 %65, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %67)
  store i32 0, i32* %11, align 4
  br label %101

69:                                               ; preds = %58
  %70 = load i32, i32* %26, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %97

73:                                               ; preds = %52
  %74 = load i32, i32* %25, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %17, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @log_syntax(i8* %77, i32 %78, i8* %79, i32 %80, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %82)
  store i32 0, i32* %11, align 4
  br label %101

84:                                               ; preds = %73
  %85 = load i8*, i8** %17, align 8
  %86 = call i64 @streq(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %26, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %26, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %69
  %98 = load %union.in_addr_union*, %union.in_addr_union** %23, align 8
  %99 = bitcast %union.in_addr_union* %98 to i8*
  %100 = bitcast %union.in_addr_union* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %76, %61, %43
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @in_addr_from_string_auto(i8*, i32*, %union.in_addr_union*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @in_addr_is_multicast(i32, %union.in_addr_union*) #1

declare dso_local i64 @streq(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
