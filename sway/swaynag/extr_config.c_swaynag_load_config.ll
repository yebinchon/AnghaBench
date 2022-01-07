; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_config.c_swaynag_load_config.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_config.c_swaynag_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32 }
%struct.swaynag_type = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to read config. Running without it.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<config>\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Closing bracket not found on line %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"swaynag\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swaynag_load_config(i8* %0, %struct.swaynag* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.swaynag*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.swaynag_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [2 x i8*], align 16
  store i8* %0, i8** %5, align 8
  store %struct.swaynag* %1, %struct.swaynag** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %148

26:                                               ; preds = %3
  %27 = call %struct.swaynag_type* @swaynag_type_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.swaynag_type* %27, %struct.swaynag_type** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.swaynag_type*, %struct.swaynag_type** %9, align 8
  %30 = call i32 @list_add(i32* %28, %struct.swaynag_type* %29)
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %141, %53, %26
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @getline(i8** %10, i64* %11, i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %142

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %35
  br label %31

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 91
  br i1 %74, label %75, label %117

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = call i8* @strchr(i8* %76, i8 signext 93)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  store i32 1, i32* %14, align 4
  br label %142

84:                                               ; preds = %75
  %85 = load i8*, i8** %15, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i8* @calloc(i32 1, i32 %90)
  store i8* %91, i8** %16, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8*, i8** %15, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sub nsw i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i32 @strncat(i8* %92, i8* %94, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = call %struct.swaynag_type* @swaynag_type_get(i32* %103, i8* %104)
  store %struct.swaynag_type* %105, %struct.swaynag_type** %9, align 8
  %106 = load %struct.swaynag_type*, %struct.swaynag_type** %9, align 8
  %107 = icmp ne %struct.swaynag_type* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %84
  %109 = load i8*, i8** %16, align 8
  %110 = call %struct.swaynag_type* @swaynag_type_new(i8* %109)
  store %struct.swaynag_type* %110, %struct.swaynag_type** %9, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.swaynag_type*, %struct.swaynag_type** %9, align 8
  %113 = call i32 @list_add(i32* %111, %struct.swaynag_type* %112)
  br label %114

114:                                              ; preds = %108, %84
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 @free(i8* %115)
  br label %141

117:                                              ; preds = %69
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 3
  %120 = sext i32 %119 to i64
  %121 = mul i64 1, %120
  %122 = trunc i64 %121 to i32
  %123 = call i8* @malloc(i32 %122)
  store i8* %123, i8** %17, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @sprintf(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  %127 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %127, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 1
  %129 = load i8*, i8** %17, align 8
  store i8* %129, i8** %128, align 8
  %130 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  %131 = load %struct.swaynag*, %struct.swaynag** %6, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.swaynag_type*, %struct.swaynag_type** %9, align 8
  %134 = call i32 @swaynag_parse_options(i32 2, i8** %130, %struct.swaynag* %131, i32* %132, %struct.swaynag_type* %133, i32* null, i32* null)
  store i32 %134, i32* %14, align 4
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %117
  br label %142

140:                                              ; preds = %117
  br label %141

141:                                              ; preds = %140, %114
  br label %31

142:                                              ; preds = %139, %80, %31
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @fclose(i32* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %142, %23
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.swaynag_type* @swaynag_type_new(i8*) #1

declare dso_local i32 @list_add(i32*, %struct.swaynag_type*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local %struct.swaynag_type* @swaynag_type_get(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @swaynag_parse_options(i32, i8**, %struct.swaynag*, i32*, %struct.swaynag_type*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
