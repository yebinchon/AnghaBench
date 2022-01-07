; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_write_stubdesc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_write_stubdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"static const MIDL_STUB_DESC Object_StubDesc =\0A{\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"0,\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"NdrOleAllocate,\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"NdrOleFree,\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"{0}, 0, 0, %s, 0,\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ExprEvalRoutines\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"__MIDL_TypeFormatString.Format,\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"1, /* -error bounds_check flag */\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"0x%x, /* Ndr library version */\0A\00", align 1
@MODE_Oif = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"0x50100a4, /* MIDL Version 5.1.164 */\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s,\0A\00", align 1
@user_type_list = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"UserMarshalRoutines\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"0,  /* notify & notify_flag routine table */\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"1,  /* Flags */\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"0,  /* Reserved3 */\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"0,  /* Reserved4 */\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"0   /* Reserved5 */\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_stubdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_stubdesc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @indent, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @indent, align 4
  %6 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %13 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  %14 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i64 (...) @get_stub_mode()
  %17 = load i64, i64* @MODE_Oif, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 327682, i32 65537
  %21 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %20)
  %22 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i64 @list_empty(i32* @user_type_list)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)
  %29 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %28)
  %30 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %35 = load i32, i32* @indent, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @indent, align 4
  %37 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_proxy(i8*, ...) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
