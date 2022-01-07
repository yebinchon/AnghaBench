; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_stubdescriptor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_stubdescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ATTR_IMPLICIT_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"static const MIDL_STUB_DESC %s_StubDesc =\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(void *)& %s___RpcClientInterface,\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"MIDL_user_allocate,\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MIDL_user_free,\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"&%s,\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"&%s__MIDL_AutoBindHandle,\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"0,\0A\00", align 1
@generic_handle_list = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"BindingRoutines,\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ExprEvalRoutines,\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"__MIDL_TypeFormatString.Format,\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"1, /* -error bounds_check flag */\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"0x%x, /* Ndr library version */\0A\00", align 1
@MODE_Oif = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [39 x i8] c"0x50100a4, /* MIDL Version 5.1.164 */\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s,\0A\00", align 1
@user_type_list = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"UserMarshalRoutines\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"0,  /* notify & notify_flag routine table */\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"1,  /* Flags */\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"0,  /* Reserved3 */\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"0,  /* Reserved4 */\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"0   /* Reserved5 */\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@client = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @write_stubdescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_stubdescriptor(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATTR_IMPLICIT_HANDLE, align 4
  %10 = call %struct.TYPE_5__* @get_attrp(i32 %8, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @indent, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @indent, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @indent, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @indent, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @indent, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @indent, align 4
  %42 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %44 = call i64 @list_empty(i32* @generic_handle_list)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %50

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %53
  %58 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %61 = call i64 (...) @get_stub_mode()
  %62 = load i64, i64* @MODE_Oif, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 327682, i32 65537
  %66 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %65)
  %67 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %69 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %70 = call i64 @list_empty(i32* @user_type_list)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)
  %74 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %73)
  %75 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %76 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %77 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %80 = load i32, i32* @indent, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* @indent, align 4
  %82 = call i32 (i8*, ...) @print_client(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %83 = load i32, i32* @client, align 4
  %84 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_5__* @get_attrp(i32, i32) #1

declare dso_local i32 @print_client(i8*, ...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
