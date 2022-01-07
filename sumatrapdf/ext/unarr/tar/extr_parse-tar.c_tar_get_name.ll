; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/tar/extr_parse-tar.c_tar_get_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/tar/extr_parse-tar.c_tar_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@TAR_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tar_get_name(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = bitcast %struct.TYPE_7__* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %155, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @ar_seek(i32 %18, i64 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %160

26:                                               ; preds = %15
  %27 = call i8* @malloc(i32 101)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @ar_read(i32 %33, i8* %34, i32 100)
  %36 = icmp ne i32 %35, 100
  br i1 %36, label %37, label %51

37:                                               ; preds = %30, %26
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @TAR_BLOCK_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @ar_seek(i32 %42, i64 %48, i32 %49)
  store i8* null, i8** %2, align 8
  br label %160

51:                                               ; preds = %30
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 100
  store i8 0, i8* %53, align 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %112

59:                                               ; preds = %51
  %60 = call i8* @malloc(i32 257)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ar_skip(i32 %66, i32 245)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @ar_read(i32 %72, i8* %73, i32 167)
  %75 = icmp ne i32 %74, 167
  br i1 %75, label %76, label %92

76:                                               ; preds = %69, %63, %59
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @TAR_BLOCK_SIZE, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* @SEEK_SET, align 4
  %91 = call i32 @ar_seek(i32 %83, i64 %89, i32 %90)
  store i8* null, i8** %2, align 8
  br label %160

92:                                               ; preds = %69
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 156
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strcat(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @strcat(i8* %103, i8* %104)
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %6, align 8
  store i8* %108, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %109

109:                                              ; preds = %98, %92
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @free(i8* %110)
  br label %119

112:                                              ; preds = %51
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @TAR_BLOCK_SIZE, align 4
  %117 = sub nsw i32 %116, 100
  %118 = call i32 @ar_skip(i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i8*, i8** %5, align 8
  %121 = call i64 @ar_is_valid_utf8(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8*, i8** %5, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  br label %136

128:                                              ; preds = %119
  %129 = load i8*, i8** %5, align 8
  %130 = call i8* @ar_conv_dos_to_utf8(i8* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @free(i8* %134)
  br label %136

136:                                              ; preds = %128, %123
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %7, align 8
  br label %147

147:                                              ; preds = %151, %142
  %148 = load i8*, i8** %7, align 8
  %149 = call i8* @strchr(i8* %148, i8 signext 92)
  store i8* %149, i8** %7, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  store i8 47, i8* %152, align 1
  br label %147

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %136
  br label %155

155:                                              ; preds = %154, %1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %2, align 8
  br label %160

160:                                              ; preds = %155, %76, %37, %25
  %161 = load i8*, i8** %2, align 8
  ret i8* %161
}

declare dso_local i32 @ar_seek(i32, i64, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ar_read(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ar_skip(i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @ar_is_valid_utf8(i8*) #1

declare dso_local i8* @ar_conv_dos_to_utf8(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
