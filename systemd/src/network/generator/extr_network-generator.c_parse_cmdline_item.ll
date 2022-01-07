; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_parse_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rd.route\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nameserver\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"rd.peerdns\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bond\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @streq(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @parse_cmdline_ip(i32* %19, i8* %20, i8* %21)
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @streq(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @parse_cmdline_rd_route(i32* %28, i8* %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %87

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @streq(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @parse_cmdline_nameserver(i32* %37, i8* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %87

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @parse_cmdline_rd_peerdns(i32* %46, i8* %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %87

50:                                               ; preds = %41
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @streq(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @parse_cmdline_vlan(i32* %55, i8* %56, i8* %57)
  store i32 %58, i32* %4, align 4
  br label %87

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @streq(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @parse_cmdline_bridge(i32* %64, i8* %65, i8* %66)
  store i32 %67, i32* %4, align 4
  br label %87

68:                                               ; preds = %59
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @streq(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @parse_cmdline_bond(i32* %73, i8* %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %87

77:                                               ; preds = %68
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @streq(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @parse_cmdline_ifname(i32* %82, i8* %83, i8* %84)
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %81, %72, %63, %54, %45, %36, %27, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_cmdline_ip(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_rd_route(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_nameserver(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_rd_peerdns(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_vlan(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_bridge(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_bond(i32*, i8*, i8*) #1

declare dso_local i32 @parse_cmdline_ifname(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
