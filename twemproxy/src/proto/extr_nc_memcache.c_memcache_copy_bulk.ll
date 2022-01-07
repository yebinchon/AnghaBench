; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_copy_bulk.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_copy_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32 }
%struct.mbuf = type { i8*, i8* }

@NC_OK = common dso_local global i32 0, align 4
@CRLF_LEN = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@NC_ENOMEM = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"memcache_copy_bulk copy bytes: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*, %struct.msg*)* @memcache_copy_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memcache_copy_bulk(%struct.msg* %0, %struct.msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg*, align 8
  %5 = alloca %struct.msg*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msg* %0, %struct.msg** %4, align 8
  store %struct.msg* %1, %struct.msg** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
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
  %42 = load i32, i32* @NC_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %195

43:                                               ; preds = %35
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 86
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %68, %43
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %62, %56
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  br label %57

65:                                               ; preds = %57
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %53

71:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %93, %71
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ult i8* %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isdigit(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %72
  %84 = phi i1 [ false, %72 ], [ %82, %78 ]
  br i1 %84, label %85, label %96

85:                                               ; preds = %83
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %86, 10
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %90, 48
  %92 = add nsw i32 %87, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  br label %72

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ult i8* %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 13, %106
  br label %108

108:                                              ; preds = %103, %97
  %109 = phi i1 [ false, %97 ], [ %107, %103 ]
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  br label %97

114:                                              ; preds = %108
  %115 = load i32, i32* @CRLF_LEN, align 4
  %116 = mul nsw i32 %115, 2
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %119 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %179, %114
  %132 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %133 = icmp ne %struct.mbuf* %132, null
  br i1 %133, label %134, label %180

134:                                              ; preds = %131
  %135 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %136 = call i32 @mbuf_length(%struct.mbuf* %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %134
  %140 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %141 = load i32, i32* @next, align 4
  %142 = call %struct.mbuf* @STAILQ_NEXT(%struct.mbuf* %140, i32 %141)
  store %struct.mbuf* %142, %struct.mbuf** %7, align 8
  %143 = load %struct.msg*, %struct.msg** %5, align 8
  %144 = getelementptr inbounds %struct.msg, %struct.msg* %143, i32 0, i32 1
  %145 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %146 = call i32 @mbuf_remove(i32* %144, %struct.mbuf* %145)
  %147 = load %struct.msg*, %struct.msg** %4, align 8
  %148 = getelementptr inbounds %struct.msg, %struct.msg* %147, i32 0, i32 1
  %149 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %150 = call i32 @mbuf_insert(i32* %148, %struct.mbuf* %149)
  %151 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %152 = call i32 @mbuf_length(%struct.mbuf* %151)
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %155, %struct.mbuf** %6, align 8
  br label %179

156:                                              ; preds = %134
  %157 = call %struct.mbuf* (...) @mbuf_get()
  store %struct.mbuf* %157, %struct.mbuf** %7, align 8
  %158 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %159 = icmp eq %struct.mbuf* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %161, i32* %3, align 4
  br label %195

162:                                              ; preds = %156
  %163 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %164 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %165 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @mbuf_copy(%struct.mbuf* %163, i8* %166, i32 %167)
  %169 = load %struct.msg*, %struct.msg** %4, align 8
  %170 = getelementptr inbounds %struct.msg, %struct.msg* %169, i32 0, i32 1
  %171 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %172 = call i32 @mbuf_insert(i32* %170, %struct.mbuf* %171)
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %175 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = sext i32 %173 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %175, align 8
  br label %180

179:                                              ; preds = %139
  br label %131

180:                                              ; preds = %162, %131
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.msg*, %struct.msg** %4, align 8
  %183 = getelementptr inbounds %struct.msg, %struct.msg* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.msg*, %struct.msg** %5, align 8
  %188 = getelementptr inbounds %struct.msg, %struct.msg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* @LOG_VVERB, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @log_debug(i32 %191, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @NC_OK, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %180, %160, %41
  %196 = load i32, i32* %3, align 4
  ret i32 %196
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

declare dso_local %struct.mbuf* @mbuf_get(...) #1

declare dso_local i32 @mbuf_copy(%struct.mbuf*, i8*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
