; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_section_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_section_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcSection = type { i8*, i8*, i64, i64, i32, i32, i32, i32, i64 }
%struct.chmcFile = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"tmpdir too long: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MSCompressed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"chmcCXXXXXX\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"chmcUXXXXXX\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"temp file: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"creat() file '%s'\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"section '%s' allocation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chmcSection* @chmc_section_create(%struct.chmcFile* %0, i8* %1) #0 {
  %3 = alloca %struct.chmcSection*, align 8
  %4 = alloca %struct.chmcFile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.chmcSection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.chmcFile* %0, %struct.chmcFile** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = call %struct.chmcSection* @calloc(i32 1, i32 56)
  store %struct.chmcSection* %11, %struct.chmcSection** %6, align 8
  %12 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %13 = icmp ne %struct.chmcSection* %12, null
  br i1 %13, label %14, label %136

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %18 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @memcpy(i8* %19, i8* %20, i32 %22)
  %24 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %25 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %24, i32 0, i32 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %27 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %26, i32 0, i32 7
  store i32 0, i32* %27, align 4
  store i8* null, i8** %7, align 8
  %28 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %29 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %34 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %32, %14
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PATH_MAX, align 4
  %47 = sub nsw i32 %46, 12
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @chmcerr_set(i32 %50, i32 %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @chmcerr_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %145

56:                                               ; preds = %42
  %57 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %58 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strcat(i8* %59, i8* %60)
  %62 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %63 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 47
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %74 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcat(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %56
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %83 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcat(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %88 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcat(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %93 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @mkstemps(i8* %94, i32 0)
  %96 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %97 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @stderr, align 4
  %99 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %100 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  %103 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %104 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %91
  %108 = load i32, i32* @errno, align 4
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @strerror(i32 %109)
  %111 = call i32 @chmcerr_set(i32 %108, i32 %110)
  %112 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %113 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @chmcerr_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  br label %145

116:                                              ; preds = %91
  %117 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %118 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %116
  %123 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %124 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %123, i32 0, i32 6
  %125 = call i32 @chmc_reset_table_init(i32* %124)
  %126 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %127 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %126, i32 0, i32 5
  %128 = call i32 @chmc_control_data_init(i32* %127)
  %129 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %130 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %129, i32 0, i32 4
  %131 = call i32 @INIT_LIST_HEAD(i32* %130)
  %132 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %133 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %122, %116
  br label %135

135:                                              ; preds = %134
  br label %143

136:                                              ; preds = %2
  %137 = load i32, i32* @errno, align 4
  %138 = load i32, i32* @errno, align 4
  %139 = call i32 @strerror(i32 %138)
  %140 = call i32 @chmcerr_set(i32 %137, i32 %139)
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @chmcerr_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %136, %135
  %144 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  store %struct.chmcSection* %144, %struct.chmcSection** %3, align 8
  br label %148

145:                                              ; preds = %107, %49
  %146 = load %struct.chmcSection*, %struct.chmcSection** %6, align 8
  %147 = call i32 @free(%struct.chmcSection* %146)
  store %struct.chmcSection* null, %struct.chmcSection** %3, align 8
  br label %148

148:                                              ; preds = %145, %143
  %149 = load %struct.chmcSection*, %struct.chmcSection** %3, align 8
  ret %struct.chmcSection* %149
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.chmcSection* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @chmcerr_set(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @chmcerr_msg(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @mkstemps(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @chmc_reset_table_init(i32*) #1

declare dso_local i32 @chmc_control_data_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @free(%struct.chmcSection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
