; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_rd_route.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_rd_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse_cmdline_rd_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline_rd_route(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.in_addr_union, align 4
  %9 = alloca %union.in_addr_union, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = bitcast %union.in_addr_union* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = bitcast %union.in_addr_union* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @proc_cmdline_value_missing(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 91
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 93)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %110

38:                                               ; preds = %30
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 58
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %110

47:                                               ; preds = %38
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sub nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i8* @strndupa(i8* %49, i32 %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %59, i8** %7, align 8
  %60 = load i32, i32* @AF_INET6, align 4
  store i32 %60, i32* %13, align 4
  br label %81

61:                                               ; preds = %24
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 58)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @strndupa(i8* %70, i32 %76)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %7, align 8
  %80 = load i32, i32* @AF_INET, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %69, %47
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @in_addr_prefix_from_string(i8* %82, i32 %83, %union.in_addr_union* %8, i8* %10)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %4, align 4
  br label %110

89:                                               ; preds = %81
  %90 = load i8*, i8** %7, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 58)
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @strjoina(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %96, i8** %7, align 8
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @parse_ip_address_one(i32 %98, i8** %7, %union.in_addr_union* %9)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %4, align 4
  br label %110

104:                                              ; preds = %97
  %105 = load i32*, i32** %5, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i8, i8* %10, align 1
  %109 = call i32 @network_set_route(i32* %105, i8* %106, i32 %107, i8 zeroext %108, %union.in_addr_union* %8, %union.in_addr_union* %9)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %102, %87, %66, %44, %35, %21
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strndupa(i8*, i32) #2

declare dso_local i32 @in_addr_prefix_from_string(i8*, i32, %union.in_addr_union*, i8*) #2

declare dso_local i8* @strjoina(i8*, i8*) #2

declare dso_local i32 @parse_ip_address_one(i32, i8**, %union.in_addr_union*) #2

declare dso_local i32 @network_set_route(i32*, i8*, i32, i8 zeroext, %union.in_addr_union*, %union.in_addr_union*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
