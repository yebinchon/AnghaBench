; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_seafile-rpc-wrapper.c_seafile_get_repo_token.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_seafile-rpc-wrapper.c_seafile_get_repo_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"seafile_get_repo_token\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seafile_get_repo_token(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32** %2, i32*** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ false, %3 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @g_return_val_if_fail(i32 %14, i32* null)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @searpc_client_call__string(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32** %17, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  ret i8* %19
}

declare dso_local i32 @g_return_val_if_fail(i32, i32*) #1

declare dso_local i8* @searpc_client_call__string(i32*, i8*, i32**, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
