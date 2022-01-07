; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_contexthandle_tfs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_write_contexthandle_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_iface = common dso_local global i32 0, align 4
@FC_RP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"0x%x, 0x0,\09/* %s */\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"NdrFcShort(0x2),\09 /* Offset= 2 (%u) */\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/* %2u */\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"0x%02x,\09/* FC_BIND_CONTEXT */\0A\00", align 1
@FC_BIND_CONTEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"0x%x,\09/* Context flags: \00", align 1
@NDR_CONTEXT_HANDLE_CANNOT_BE_NULL = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"can't be null, \00", align 1
@NDR_CONTEXT_HANDLE_SERIALIZE = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"serialize, \00", align 1
@NDR_CONTEXT_HANDLE_NOSERIALIZE = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"no serialize, \00", align 1
@NDR_STRICT_CONTEXT_HANDLE = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"strict, \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"out, \00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"return, \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"in, \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"via ptr, \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"*/\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"0x%x,\09/* rundown routine */\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"0, /* FIXME: param num */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*)* @write_contexthandle_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_contexthandle_tfs(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @current_iface, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call zeroext i8 @get_contexthandle_flags(i32 %16, i32* %17, i32* %18)
  store i8 %19, i8* %12, align 1
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @print_start_tfs_comment(i32* %20, i32* %21, i32 %22)
  %24 = load i8, i8* %12, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @get_pointer_fc(i32* %29, i32* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @FC_RP, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, 4
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @string_of_type(i32 %43)
  %45 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %41, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %46, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %50, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %37, %5
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @FC_BIND_CONTEXT, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %55, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %58, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 33
  %65 = icmp ne i32 %64, 33
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @NDR_CONTEXT_HANDLE_CANNOT_BE_NULL, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %74, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %66, %54
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @NDR_CONTEXT_HANDLE_SERIALIZE, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %84, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i8, i8* %12, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @NDR_CONTEXT_HANDLE_NOSERIALIZE, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %94, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @NDR_STRICT_CONTEXT_HANDLE, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %104, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %96
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 33
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %112, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i8, i8* %12, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 33
  %118 = icmp eq i32 %117, 33
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %120, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i8, i8* %12, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 64
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %128, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i8, i8* %12, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 128
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %136, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %139, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %141 = load i32*, i32** %6, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @get_context_handle_offset(i32* %142)
  %144 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %141, i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %143)
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %145, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 4
  store i32 %149, i32* %147, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @update_tfsoff(i32* %150, i32 %151, i32* %152)
  %154 = load i32, i32* %11, align 4
  ret i32 %154
}

declare dso_local zeroext i8 @get_contexthandle_flags(i32, i32*, i32*) #1

declare dso_local i32 @print_start_tfs_comment(i32*, i32*, i32) #1

declare dso_local i32 @get_pointer_fc(i32*, i32*, i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i32 @string_of_type(i32) #1

declare dso_local i32 @get_context_handle_offset(i32*) #1

declare dso_local i32 @update_tfsoff(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
