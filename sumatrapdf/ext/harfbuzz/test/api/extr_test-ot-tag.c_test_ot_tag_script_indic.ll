; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-ot-tag.c_test_ot_tag_script_indic.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-ot-tag.c_test_ot_tag_script_indic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"bng2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"beng\00", align 1
@HB_SCRIPT_BENGALI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dev2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"deva\00", align 1
@HB_SCRIPT_DEVANAGARI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"gjr2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gujr\00", align 1
@HB_SCRIPT_GUJARATI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"gur2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"guru\00", align 1
@HB_SCRIPT_GURMUKHI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"knd2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"knda\00", align 1
@HB_SCRIPT_KANNADA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"mlm2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mlym\00", align 1
@HB_SCRIPT_MALAYALAM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"ory2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"orya\00", align 1
@HB_SCRIPT_ORIYA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"tml2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"taml\00", align 1
@HB_SCRIPT_TAMIL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"tel2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"telu\00", align 1
@HB_SCRIPT_TELUGU = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"mym2\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mymr\00", align 1
@HB_SCRIPT_MYANMAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ot_tag_script_indic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ot_tag_script_indic() #0 {
  %1 = load i32, i32* @HB_SCRIPT_BENGALI, align 4
  %2 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @HB_SCRIPT_DEVANAGARI, align 4
  %4 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @HB_SCRIPT_GUJARATI, align 4
  %6 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @HB_SCRIPT_GURMUKHI, align 4
  %8 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @HB_SCRIPT_KANNADA, align 4
  %10 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @HB_SCRIPT_MALAYALAM, align 4
  %12 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @HB_SCRIPT_ORIYA, align 4
  %14 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @HB_SCRIPT_TAMIL, align 4
  %16 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @HB_SCRIPT_TELUGU, align 4
  %18 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @HB_SCRIPT_MYANMAR, align 4
  %20 = call i32 @test_indic_tags(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @test_indic_tags(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
