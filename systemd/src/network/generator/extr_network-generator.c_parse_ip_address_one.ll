; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_ip_address_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_ip_address_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %union.in_addr_union*)* @parse_ip_address_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ip_address_one(i32 %0, i8** %1, %union.in_addr_union* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %union.in_addr_union*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %union.in_addr_union* %2, %union.in_addr_union** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 58
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8**, i8*** %6, align 8
  store i8* %21, i8** %22, align 8
  store i32 0, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AF_INET6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 91
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %98

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i8* @strchr(i8* %38, i8 signext 93)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %98

45:                                               ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 58
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %98

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sub nsw i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i8* @strndupa(i8* %56, i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %8, align 8
  br label %86

67:                                               ; preds = %23
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 58)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %98

75:                                               ; preds = %67
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i8* @strndupa(i8* %76, i32 %82)
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %75, %54
  %87 = load i32, i32* %5, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load %union.in_addr_union*, %union.in_addr_union** %7, align 8
  %90 = call i32 @in_addr_from_string(i32 %87, i8* %88, %union.in_addr_union* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %98

95:                                               ; preds = %86
  %96 = load i8*, i8** %8, align 8
  %97 = load i8**, i8*** %6, align 8
  store i8* %96, i8** %97, align 8
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %93, %72, %51, %42, %33, %19
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndupa(i8*, i32) #1

declare dso_local i32 @in_addr_from_string(i32, i8*, %union.in_addr_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
