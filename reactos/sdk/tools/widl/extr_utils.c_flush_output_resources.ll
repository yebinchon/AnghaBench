; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_flush_output_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_utils.c_flush_output_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@output_buffer_pos = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error creating %s\0A\00", align 1
@output_buffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error writing to %s\0A\00", align 1
@nb_resources = common dso_local global i32 0, align 4
@resources = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_output_resources(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @output_buffer_pos, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 @put_dword(i32 0)
  %11 = call i32 @put_dword(i32 32)
  %12 = call i32 @put_word(i32 65535)
  %13 = call i32 @put_word(i32 0)
  %14 = call i32 @put_word(i32 65535)
  %15 = call i32 @put_word(i32 0)
  %16 = call i32 @put_dword(i32 0)
  %17 = call i32 @put_word(i32 0)
  %18 = call i32 @put_word(i32 0)
  %19 = call i32 @put_dword(i32 0)
  %20 = call i32 @put_dword(i32 0)
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = load i32, i32* @O_CREAT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_TRUNC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @O_BINARY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @open(i8* %21, i32 %28, i32 438)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @output_buffer, align 4
  %38 = load i64, i64* @output_buffer_pos, align 8
  %39 = call i64 @write(i32 %36, i32 %37, i64 %38)
  %40 = load i64, i64* @output_buffer_pos, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %35
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %83, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @nb_resources, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @resources, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @resources, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @write(i32 %51, i32 %57, i64 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @resources, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %64, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %50
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %50
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @resources, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @free(i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %46

86:                                               ; preds = %46
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @close(i32 %87)
  store i32 0, i32* @nb_resources, align 4
  %89 = load i32, i32* @output_buffer, align 4
  %90 = call i32 @free(i32 %89)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @put_dword(i32) #1

declare dso_local i32 @put_word(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
