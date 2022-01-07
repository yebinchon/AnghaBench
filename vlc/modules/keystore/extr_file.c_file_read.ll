; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_file.c_file_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_file.c_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ks_list = type { i32 }
%struct.TYPE_7__ = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@KEY_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c",}\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, %struct.ks_list*)* @file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_read(%struct.TYPE_8__* %0, i32* %1, i32 %2, %struct.ks_list* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ks_list*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ks_list* %3, %struct.ks_list** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %152, %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @getline(i8** %10, i64* %11, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %153

28:                                               ; preds = %24
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %14, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 123
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (...) @getchar()
  br label %154

37:                                               ; preds = %28
  %38 = load %struct.ks_list*, %struct.ks_list** %8, align 8
  %39 = call %struct.TYPE_7__* @ks_list_new_entry(%struct.ks_list* %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %15, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %154

43:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %116, %43
  %45 = load i8*, i8** %14, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i1 [ false, %44 ], [ %52, %49 ]
  br i1 %54, label %55, label %128

55:                                               ; preds = %53
  %56 = load i8*, i8** %14, align 8
  %57 = call i64 @strcspn(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %57, i64* %20, align 8
  %58 = load i64, i64* %20, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %20, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %55
  br label %154

68:                                               ; preds = %60
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %20, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %14, align 8
  store i8* %72, i8** %18, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = call i32 @str2key(i8* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @KEY_MAX, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %68
  br label %154

82:                                               ; preds = %77
  %83 = load i64, i64* %20, align 8
  %84 = add i64 %83, 1
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i64 @strcspn(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %88, i64* %20, align 8
  %89 = load i64, i64* %20, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load i8*, i8** %14, align 8
  %93 = load i64, i64* %20, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91, %82
  br label %154

99:                                               ; preds = %91
  %100 = load i8*, i8** %14, align 8
  %101 = load i64, i64* %20, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 125
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %99
  %108 = load i8*, i8** %14, align 8
  %109 = load i64, i64* %20, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load i8*, i8** %14, align 8
  %112 = call i8* @vlc_b64_decode(i8* %111)
  store i8* %112, i8** %19, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %154

116:                                              ; preds = %107
  %117 = load i64, i64* %20, align 8
  %118 = add i64 %117, 1
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 %118
  store i8* %120, i8** %14, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %121, i8** %127, align 8
  br label %44

128:                                              ; preds = %53
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %14, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 58
  br i1 %137, label %138, label %139

138:                                              ; preds = %133, %128
  br label %154

139:                                              ; preds = %133
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i8*, i8** %14, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = call i32 @vlc_b64_decode_binary(i32* %141, i8* %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %139
  br label %154

152:                                              ; preds = %139
  br label %24

153:                                              ; preds = %24
  store i32 1, i32* %13, align 4
  br label %154

154:                                              ; preds = %153, %151, %138, %115, %98, %81, %67, %42, %35
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 @free(i8* %155)
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  %161 = call i64 @truncate0(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @vlc_unlink(i32 %166)
  br label %168

168:                                              ; preds = %163, %159
  br label %169

169:                                              ; preds = %168, %154
  %170 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %170
}

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local %struct.TYPE_7__* @ks_list_new_entry(%struct.ks_list*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @str2key(i8*) #1

declare dso_local i8* @vlc_b64_decode(i8*) #1

declare dso_local i32 @vlc_b64_decode_binary(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @truncate0(i32) #1

declare dso_local i32 @vlc_unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
