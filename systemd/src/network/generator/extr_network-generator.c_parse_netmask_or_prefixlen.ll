; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_netmask_or_prefixlen.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_netmask_or_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @parse_netmask_or_prefixlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_netmask_or_prefixlen(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.in_addr_union, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = call i32 @parse_ip_address_one(i32 %12, i8** %13, %union.in_addr_union* %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @AF_INET6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %72

24:                                               ; preds = %17
  %25 = bitcast %union.in_addr_union* %8 to i32*
  %26 = call zeroext i8 @in4_addr_netmask_to_prefixlen(i32* %25)
  %27 = load i8*, i8** %7, align 8
  store i8 %26, i8* %27, align 1
  br label %71

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @AF_INET6, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 128, i32 32
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %7, align 8
  store i8 %37, i8* %38, align 1
  br label %70

39:                                               ; preds = %28
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 58)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %72

48:                                               ; preds = %39
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %51 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @strndupa(i8* %50, i32 %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @safe_atou8(i8* %59, i8* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %48
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %31
  br label %71

71:                                               ; preds = %70, %24
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %64, %45, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @parse_ip_address_one(i32, i8**, %union.in_addr_union*) #1

declare dso_local zeroext i8 @in4_addr_netmask_to_prefixlen(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndupa(i8*, i32) #1

declare dso_local i32 @safe_atou8(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
