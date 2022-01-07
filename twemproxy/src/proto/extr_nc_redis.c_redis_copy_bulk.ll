; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_copy_bulk.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_copy_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32 }
%struct.mbuf = type { i8*, i8* }

@NC_ERROR = common dso_local global i64 0, align 8
@CRLF_LEN = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i64 0, align 8
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"redis_copy_bulk copy bytes: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.msg*, %struct.msg*)* @redis_copy_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @redis_copy_bulk(%struct.msg* %0, %struct.msg* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.msg*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.msg* %0, %struct.msg** %4, align 8
  store %struct.msg* %1, %struct.msg** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.msg*, %struct.msg** %5, align 8
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %12, i32 0, i32 1
  %14 = call %struct.mbuf* @STAILQ_FIRST(i32* %13)
  store %struct.mbuf* %14, %struct.mbuf** %6, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = call i64 @mbuf_empty(%struct.mbuf* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = load %struct.msg*, %struct.msg** %5, align 8
  %26 = getelementptr inbounds %struct.msg, %struct.msg* %25, i32 0, i32 1
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = call i32 @mbuf_remove(i32* %26, %struct.mbuf* %27)
  %29 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %30 = call i32 @mbuf_put(%struct.mbuf* %29)
  br label %31

31:                                               ; preds = %24
  %32 = load %struct.msg*, %struct.msg** %5, align 8
  %33 = getelementptr inbounds %struct.msg, %struct.msg* %32, i32 0, i32 1
  %34 = call %struct.mbuf* @STAILQ_FIRST(i32* %33)
  store %struct.mbuf* %34, %struct.mbuf** %6, align 8
  br label %15

35:                                               ; preds = %22
  %36 = load %struct.msg*, %struct.msg** %5, align 8
  %37 = getelementptr inbounds %struct.msg, %struct.msg* %36, i32 0, i32 1
  %38 = call %struct.mbuf* @STAILQ_FIRST(i32* %37)
  store %struct.mbuf* %38, %struct.mbuf** %6, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @NC_ERROR, align 8
  store i64 %42, i64* %3, align 8
  br label %193

43:                                               ; preds = %35
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 36
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %75

60:                                               ; preds = %43
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 49
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32, i32* @CRLF_LEN, align 4
  %68 = add nsw i32 3, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8* %74, i8** %8, align 8
  br label %116

75:                                               ; preds = %60, %43
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ult i8* %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isdigit(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %82, %76
  %88 = phi i1 [ false, %76 ], [ %86, %82 ]
  br i1 %88, label %89, label %100

89:                                               ; preds = %87
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 10
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = sub nsw i32 %94, 48
  %96 = add nsw i32 %91, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  br label %76

100:                                              ; preds = %87
  %101 = load i32, i32* @CRLF_LEN, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %105 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %100, %66
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %173, %116
  %119 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %120 = icmp ne %struct.mbuf* %119, null
  br i1 %120, label %121, label %174

121:                                              ; preds = %118
  %122 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %123 = call i32 @mbuf_length(%struct.mbuf* %122)
  %124 = load i32, i32* %9, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %128 = load i32, i32* @next, align 4
  %129 = call %struct.mbuf* @STAILQ_NEXT(%struct.mbuf* %127, i32 %128)
  store %struct.mbuf* %129, %struct.mbuf** %7, align 8
  %130 = load %struct.msg*, %struct.msg** %5, align 8
  %131 = getelementptr inbounds %struct.msg, %struct.msg* %130, i32 0, i32 1
  %132 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %133 = call i32 @mbuf_remove(i32* %131, %struct.mbuf* %132)
  %134 = load %struct.msg*, %struct.msg** %4, align 8
  %135 = icmp ne %struct.msg* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load %struct.msg*, %struct.msg** %4, align 8
  %138 = getelementptr inbounds %struct.msg, %struct.msg* %137, i32 0, i32 1
  %139 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %140 = call i32 @mbuf_insert(i32* %138, %struct.mbuf* %139)
  br label %144

141:                                              ; preds = %126
  %142 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %143 = call i32 @mbuf_put(%struct.mbuf* %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %146 = call i32 @mbuf_length(%struct.mbuf* %145)
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %149, %struct.mbuf** %6, align 8
  br label %173

150:                                              ; preds = %121
  %151 = load %struct.msg*, %struct.msg** %4, align 8
  %152 = icmp ne %struct.msg* %151, null
  br i1 %152, label %153, label %166

153:                                              ; preds = %150
  %154 = load %struct.msg*, %struct.msg** %4, align 8
  %155 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %156 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @msg_append(%struct.msg* %154, i8* %157, i32 %158)
  store i64 %159, i64* %11, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* @NC_OK, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i64, i64* %11, align 8
  store i64 %164, i64* %3, align 8
  br label %193

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %150
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %169 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = sext i32 %167 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %169, align 8
  br label %174

173:                                              ; preds = %144
  br label %118

174:                                              ; preds = %166, %118
  %175 = load %struct.msg*, %struct.msg** %4, align 8
  %176 = icmp ne %struct.msg* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.msg*, %struct.msg** %4, align 8
  %180 = getelementptr inbounds %struct.msg, %struct.msg* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %174
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.msg*, %struct.msg** %5, align 8
  %186 = getelementptr inbounds %struct.msg, %struct.msg* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* @LOG_VVERB, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @log_debug(i32 %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load i64, i64* @NC_OK, align 8
  store i64 %192, i64* %3, align 8
  br label %193

193:                                              ; preds = %183, %163, %41
  %194 = load i64, i64* %3, align 8
  ret i64 %194
}

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #1

declare dso_local i64 @mbuf_empty(%struct.mbuf*) #1

declare dso_local i32 @mbuf_remove(i32*, %struct.mbuf*) #1

declare dso_local i32 @mbuf_put(%struct.mbuf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @mbuf_length(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @STAILQ_NEXT(%struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_insert(i32*, %struct.mbuf*) #1

declare dso_local i64 @msg_append(%struct.msg*, i8*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
