; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_delete_chars.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_delete_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_delete_chars.input = private unnamed_addr constant [23 x i8] c"   hello, waldo.   abc\00", align 16
@WHITESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hello,waldo.abc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delete_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delete_chars() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [23 x i8], align 16
  %3 = bitcast [23 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.test_delete_chars.input, i32 0, i32 0), i64 23, i1 false)
  %4 = getelementptr inbounds [23 x i8], [23 x i8]* %2, i64 0, i64 0
  %5 = load i32, i32* @WHITESPACE, align 4
  %6 = call i8* @delete_chars(i8* %4, i32 %5)
  store i8* %6, i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @streq(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i8*, i8** %1, align 8
  %11 = getelementptr inbounds [23 x i8], [23 x i8]* %2, i64 0, i64 0
  %12 = icmp eq i8* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @delete_chars(i8*, i32) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
