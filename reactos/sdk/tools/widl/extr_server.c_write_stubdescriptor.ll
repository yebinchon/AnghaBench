; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_server.c_write_stubdescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_server.c_write_stubdescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"static const MIDL_STUB_DESC %s_StubDesc =\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(void *)& %s___RpcServerInterface,\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"MIDL_user_allocate,\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MIDL_user_free,\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0,\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@context_handle_list = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"RundownRoutines,\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ExprEvalRoutines,\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"__MIDL_TypeFormatString.Format,\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"1, /* -error bounds_check flag */\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"0x%x, /* Ndr library version */\0A\00", align 1
@MODE_Oif = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"0x50100a4, /* MIDL Version 5.1.164 */\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s,\0A\00", align 1
@user_type_list = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"UserMarshalRoutines\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"0,  /* notify & notify_flag routine table */\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"1,  /* Flags */\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"0,  /* Reserved3 */\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"0,  /* Reserved4 */\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"0   /* Reserved5 */\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@server = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @write_stubdescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_stubdescriptor(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @indent, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @indent, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @indent, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @indent, align 4
  %21 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @indent, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @indent, align 4
  %24 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i64 @list_empty(i32* @context_handle_list)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %31

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  %32 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %39

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %35
  %40 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %43 = call i64 (...) @get_stub_mode()
  %44 = load i64, i64* @MODE_Oif, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 327682, i32 65537
  %48 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %47)
  %49 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %52 = call i64 @list_empty(i32* @user_type_list)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)
  %56 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %55)
  %57 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %61 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %62 = load i32, i32* @indent, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* @indent, align 4
  %64 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %65 = load i32, i32* @server, align 4
  %66 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_server(i8*, ...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
