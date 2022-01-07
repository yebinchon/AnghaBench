; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_commit_to_json_object.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_commit_to_json_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"commit_id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"root_id\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"repo_id\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"creator_name\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"creator\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"parent_id\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"second_parent_id\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"repo_name\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"repo_desc\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"repo_category\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"device_name\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"client_version\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"enc_version\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"no_local_history\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"new_merge\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"repaired\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @commit_to_json_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_to_json_object(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32* (...) @json_object()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @json_object_set_string_member(i32* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @json_object_set_string_member(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @json_object_set_string_member(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @json_object_set_string_member(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @json_object_set_string_member(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @json_object_set_string_member(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 23
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @json_object_set_int_member(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 22
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @json_object_set_string_or_null_member(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 21
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @json_object_set_string_or_null_member(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @json_object_set_string_member(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 7
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @json_object_set_string_member(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 20
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @json_object_set_string_or_null_member(i32* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %30
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @json_object_set_string_member(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %76, %30
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 9
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 9
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @json_object_set_string_member(i32* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 19
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @json_object_set_string_member(i32* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 19
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %101
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @json_object_set_int_member(i32* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 11
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @json_object_set_string_member(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %116, %106
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 2
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32*, i32** %3, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 12
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @json_object_set_string_member(i32* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %127, %122
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %136, 3
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 13
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @json_object_set_string_member(i32* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %101
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 18
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @json_object_set_int_member(i32* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 1)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32*, i32** %3, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 14
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @json_object_set_int_member(i32* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %153
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 17
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @json_object_set_int_member(i32* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 1)
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 16
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @json_object_set_int_member(i32* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 1)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 15
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @json_object_set_int_member(i32* %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 1)
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32*, i32** %3, align 8
  ret i32* %189
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_string_member(i32*, i8*, i8*) #1

declare dso_local i32 @json_object_set_int_member(i32*, i8*, i32) #1

declare dso_local i32 @json_object_set_string_or_null_member(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
