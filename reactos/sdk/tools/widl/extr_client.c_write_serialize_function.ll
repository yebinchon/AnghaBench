; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_serialize_function.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_serialize_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@write_serialize_function.emited_pickling_info = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Serialization of type %s is not supported\0A\00", align 1
@MODE_Os = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"static const MIDL_TYPE_PICKLING_INFO __MIDL_TypePicklingInfo =\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"    0x33205054,\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"    0x3,\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"    0,\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"    0\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"%s __cdecl %s_%s(handle_t IDL_handle, %s *IDL_type)%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"    %sNdrMesType%s%s(\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"        IDL_handle,\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"        (MIDL_TYPE_PICKLING_INFO*)&__MIDL_TypePicklingInfo,\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"        &%s_StubDesc,\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"        (PFORMAT_STRING)&__MIDL_TypeFormatString.Format[%u],\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"        IDL_type);\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i8*, i8*)* @write_serialize_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_serialize_function(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = call i32 (...) @get_stub_mode()
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23, %20
  br label %122

29:                                               ; preds = %15, %5
  %30 = load i32, i32* @write_serialize_function.emited_pickling_info, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MODE_Os, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* @write_serialize_function.emited_pickling_info, align 4
  br label %58

58:                                               ; preds = %39, %35, %32, %29
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %64 ]
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %66, i8* %69, i8* %70, i8* %73, i8* %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %65
  br label %122

82:                                               ; preds = %65
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @MODE_Os, align 4
  %93 = icmp ne i32 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %89, i8* %90, i8* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @MODE_Os, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %82
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %82
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %122

122:                                              ; preds = %105, %81, %28
  ret void
}

declare dso_local i32 @get_stub_mode(...) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
