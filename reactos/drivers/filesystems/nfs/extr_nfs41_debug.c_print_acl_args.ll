; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_acl_args.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_acl_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Security query: %s %s %s\0A\00", align 1
@OWNER_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"OWNER\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GROUP_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"DACL\00", align 1
@SACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"SACL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_acl_args(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @GROUP_SECURITY_INFORMATION, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SACL_SECURITY_INFORMATION, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @DbgP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %14, i8* %20, i8* %26)
  ret void
}

declare dso_local i32 @DbgP(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
