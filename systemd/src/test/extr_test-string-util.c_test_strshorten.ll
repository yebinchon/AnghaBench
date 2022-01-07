; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_strshorten.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_strshorten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_strshorten.s = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strshorten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strshorten() #0 {
  %1 = alloca [7 x i8], align 1
  %2 = bitcast [7 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_strshorten.s, i32 0, i32 0), i64 7, i1 false)
  %3 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %4 = call i32 @strshorten(i8* %3, i32 6)
  %5 = call i32 @strlen(i32 %4)
  %6 = icmp eq i32 %5, 6
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %10 = call i32 @strshorten(i8* %9, i32 12)
  %11 = call i32 @strlen(i32 %10)
  %12 = icmp eq i32 %11, 6
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %16 = call i32 @strshorten(i8* %15, i32 2)
  %17 = call i32 @strlen(i32 %16)
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %1, i64 0, i64 0
  %22 = call i32 @strshorten(i8* %21, i32 0)
  %23 = call i32 @strlen(i32 %22)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strshorten(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
