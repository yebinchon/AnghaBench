; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_mtu.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"1500\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1400\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"65536\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"500\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1280\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"1279\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"4294967296\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"68\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"67\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_mtu() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @AF_UNSPEC, align 4
  %3 = call i32 @parse_mtu(i32 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %1)
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 1500
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi i1 [ false, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = load i32, i32* @AF_UNSPEC, align 4
  %13 = call i32 @parse_mtu(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 1400
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i1 [ false, %8 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32, i32* @AF_UNSPEC, align 4
  %23 = call i32 @parse_mtu(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %26, 65535
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi i1 [ false, %18 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32, i32* @AF_UNSPEC, align 4
  %33 = call i32 @parse_mtu(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %1, align 4
  %37 = icmp eq i32 %36, 65536
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i1 [ false, %28 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32, i32* @AF_UNSPEC, align 4
  %43 = call i32 @parse_mtu(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 4294967295
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i1 [ false, %38 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = load i32, i32* @AF_UNSPEC, align 4
  %54 = call i32 @parse_mtu(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %1, align 4
  %58 = icmp eq i32 %57, 500
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi i1 [ false, %49 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert_se(i32 %61)
  %63 = load i32, i32* @AF_UNSPEC, align 4
  %64 = call i32 @parse_mtu(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %1, align 4
  %68 = icmp eq i32 %67, 1280
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi i1 [ false, %59 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = load i32, i32* @AF_INET6, align 4
  %74 = call i32 @parse_mtu(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %1, align 4
  %78 = icmp eq i32 %77, 1280
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i1 [ false, %69 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = load i32, i32* @AF_INET6, align 4
  %84 = call i32 @parse_mtu(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %1)
  %85 = load i32, i32* @ERANGE, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert_se(i32 %88)
  %90 = load i32, i32* @AF_UNSPEC, align 4
  %91 = call i32 @parse_mtu(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %1)
  %92 = load i32, i32* @ERANGE, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  %97 = load i32, i32* @AF_INET6, align 4
  %98 = call i32 @parse_mtu(i32 %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %1)
  %99 = load i32, i32* @ERANGE, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  %104 = load i32, i32* @AF_INET6, align 4
  %105 = call i32 @parse_mtu(i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %1)
  %106 = load i32, i32* @ERANGE, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert_se(i32 %109)
  %111 = load i32, i32* @AF_UNSPEC, align 4
  %112 = call i32 @parse_mtu(i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %1)
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %79
  %115 = load i32, i32* %1, align 4
  %116 = icmp eq i32 %115, 68
  br label %117

117:                                              ; preds = %114, %79
  %118 = phi i1 [ false, %79 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert_se(i32 %119)
  %121 = load i32, i32* @AF_UNSPEC, align 4
  %122 = call i32 @parse_mtu(i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %123 = load i32, i32* @ERANGE, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert_se(i32 %126)
  %128 = load i32, i32* @AF_UNSPEC, align 4
  %129 = call i32 @parse_mtu(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* %1)
  %130 = load i32, i32* @ERANGE, align 4
  %131 = sub nsw i32 0, %130
  %132 = icmp eq i32 %129, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert_se(i32 %133)
  %135 = load i32, i32* @AF_UNSPEC, align 4
  %136 = call i32 @parse_mtu(i32 %135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i32* %1)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert_se(i32 %140)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @parse_mtu(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
