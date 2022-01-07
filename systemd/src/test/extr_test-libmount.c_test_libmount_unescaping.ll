; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-libmount.c_test_libmount_unescaping.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-libmount.c_test_libmount_unescaping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"escaped space + utf8\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"729 38 0:59 / /tmp/\E2\80\9Ezupa\\040z\C4\99bowa\E2\80\9D rw,relatime shared:395 - tmpfs die\\040Br\C3\BChe rw,seclabel\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"die Br\C3\BChe\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/tmp/\E2\80\9Ezupa z\C4\99bowa\E2\80\9D\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"escaped newline\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"729 38 0:59 / /tmp/x\\012y rw,relatime shared:395 - tmpfs newline rw,seclabel\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"/tmp/x\0Ay\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"empty source\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"760 38 0:60 / /tmp/emptysource rw,relatime shared:410 - tmpfs  rw,seclabel\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"/tmp/emptysource\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"foo\\rbar\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"790 38 0:61 / /tmp/foo\0Dbar rw,relatime shared:425 - tmpfs tmpfs rw,seclabel\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"/tmp/foo\0Dbar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_libmount_unescaping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_libmount_unescaping() #0 {
  %1 = call i32 @test_libmount_unescaping_one(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %2 = call i32 @test_libmount_unescaping_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %3 = call i32 @test_libmount_unescaping_one(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %4 = call i32 @test_libmount_unescaping_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.13, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_libmount_unescaping_one(i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
