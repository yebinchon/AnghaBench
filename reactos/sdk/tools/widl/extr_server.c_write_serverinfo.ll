; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_server.c_write_serverinfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_server.c_write_serverinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"static const MIDL_SERVER_INFO %s_ServerInfo =\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"&%s_StubDesc,\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s_ServerRoutineTable,\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"__MIDL_ProcFormatString.Format,\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s_FormatStringOffsetTable,\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"0,\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @write_serverinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_serverinfo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @indent, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @indent, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* @indent, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @indent, align 4
  %29 = call i32 (i8*, ...) @print_server(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_server(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
