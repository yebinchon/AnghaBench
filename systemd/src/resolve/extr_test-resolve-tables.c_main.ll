; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_test-resolve-tables.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_test-resolve-tables.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dns_protocol = common dso_local global i32 0, align 4
@DNS_PROTOCOL = common dso_local global i32 0, align 4
@dnssec_result = common dso_local global i32 0, align 4
@DNSSEC_RESULT = common dso_local global i32 0, align 4
@dnssec_verdict = common dso_local global i32 0, align 4
@DNSSEC_VERDICT = common dso_local global i32 0, align 4
@dns_rcode = common dso_local global i32 0, align 4
@DNS_RCODE = common dso_local global i32 0, align 4
@dns_type = common dso_local global i32 0, align 4
@DNS_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/* DNS_TYPE */\00", align 1
@_DNS_TYPE_MAX = common dso_local global i64 0, align 8
@_DNS_TYPE_STRING_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%-*s %s%s%s%s%s%s%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pseudo \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"valid_query \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"is_valid_rr \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"may_redirect \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dnssec \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"obsolete \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"wildcard \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"apex_only \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"needs_authentication\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"/* DNS_CLASS */\00", align 1
@_DNS_CLASS_MAX = common dso_local global i64 0, align 8
@_DNS_CLASS_STRING_MAX = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"%-*s %s%s\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"is_pseudo \00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @dns_protocol, align 4
  %10 = load i32, i32* @DNS_PROTOCOL, align 4
  %11 = call i32 @test_table(i32 %9, i32 %10)
  %12 = load i32, i32* @dnssec_result, align 4
  %13 = load i32, i32* @DNSSEC_RESULT, align 4
  %14 = call i32 @test_table(i32 %12, i32 %13)
  %15 = load i32, i32* @dnssec_verdict, align 4
  %16 = load i32, i32* @DNSSEC_VERDICT, align 4
  %17 = call i32 @test_table(i32 %15, i32 %16)
  %18 = load i32, i32* @dns_rcode, align 4
  %19 = load i32, i32* @DNS_RCODE, align 4
  %20 = call i32 @test_table_sparse(i32 %18, i32 %19)
  %21 = load i32, i32* @dns_type, align 4
  %22 = load i32, i32* @DNS_TYPE, align 4
  %23 = call i32 @test_table_sparse(i32 %21, i32 %22)
  %24 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %97, %2
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @_DNS_TYPE_MAX, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i8* @dns_type_to_string(i64 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = load i64, i64* @_DNS_TYPE_STRING_MAX, align 8
  %38 = icmp slt i64 %36, %37
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ true, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %96

45:                                               ; preds = %39
  %46 = load i64, i64* @_DNS_TYPE_STRING_MAX, align 8
  %47 = trunc i64 %46 to i32
  %48 = sub nsw i32 %47, 1
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @dns_type_is_pseudo(i64 %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @dns_type_is_valid_query(i64 %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @dns_type_is_valid_rr(i64 %60)
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @dns_type_may_redirect(i64 %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %70 = load i64, i64* %6, align 8
  %71 = call i64 @dns_type_is_dnssec(i64 %70)
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @dns_type_is_obsolete(i64 %75)
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @dns_type_may_wildcard(i64 %80)
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @dns_type_apex_only(i64 %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @dns_type_needs_authentication(i64 %90)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %95 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %49, i8* %54, i8* %59, i8* %64, i8* %69, i8* %74, i8* %79, i8* %84, i8* %89, i8* %94)
  br label %96

96:                                               ; preds = %45, %39
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %6, align 8
  br label %25

100:                                              ; preds = %25
  %101 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %102

102:                                              ; preds = %139, %100
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @_DNS_CLASS_MAX, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %142

106:                                              ; preds = %102
  %107 = load i64, i64* %6, align 8
  %108 = call i8* @dns_class_to_string(i64 %107)
  store i8* %108, i8** %8, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = load i64, i64* @_DNS_CLASS_STRING_MAX, align 8
  %115 = icmp slt i64 %113, %114
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ true, %106 ], [ %115, %111 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert_se(i32 %118)
  %120 = load i8*, i8** %8, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load i64, i64* @_DNS_CLASS_STRING_MAX, align 8
  %124 = trunc i64 %123 to i32
  %125 = sub nsw i32 %124, 1
  %126 = load i8*, i8** %8, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @dns_class_is_pseudo(i64 %127)
  %129 = icmp ne i64 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %132 = load i64, i64* %6, align 8
  %133 = call i64 @dns_class_is_valid_rr(i64 %132)
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %137 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %125, i8* %126, i8* %131, i8* %136)
  br label %138

138:                                              ; preds = %122, %116
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %6, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %102

142:                                              ; preds = %102
  %143 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %143
}

declare dso_local i32 @test_table(i32, i32) #1

declare dso_local i32 @test_table_sparse(i32, i32) #1

declare dso_local i32 @log_info(i8*, ...) #1

declare dso_local i8* @dns_type_to_string(i64) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @dns_type_is_pseudo(i64) #1

declare dso_local i64 @dns_type_is_valid_query(i64) #1

declare dso_local i64 @dns_type_is_valid_rr(i64) #1

declare dso_local i64 @dns_type_may_redirect(i64) #1

declare dso_local i64 @dns_type_is_dnssec(i64) #1

declare dso_local i64 @dns_type_is_obsolete(i64) #1

declare dso_local i64 @dns_type_may_wildcard(i64) #1

declare dso_local i64 @dns_type_apex_only(i64) #1

declare dso_local i64 @dns_type_needs_authentication(i64) #1

declare dso_local i8* @dns_class_to_string(i64) #1

declare dso_local i64 @dns_class_is_pseudo(i64) #1

declare dso_local i64 @dns_class_is_valid_rr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
