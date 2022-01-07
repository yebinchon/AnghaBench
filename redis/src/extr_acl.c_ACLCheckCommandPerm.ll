; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCheckCommandPerm.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLCheckCommandPerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__**, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32*** }

@ACL_OK = common dso_local global i32 0, align 4
@USER_FLAG_ALLCOMMANDS = common dso_local global i32 0, align 4
@authCommand = common dso_local global i64 0, align 8
@ACL_DENIED_CMD = common dso_local global i32 0, align 4
@USER_FLAG_ALLKEYS = common dso_local global i32 0, align 4
@ACL_DENIED_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLCheckCommandPerm(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ACL_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %204

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @USER_FLAG_ALLCOMMANDS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %107, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @authCommand, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @ACLGetUserCommandBit(%struct.TYPE_7__* %44, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32***, i32**** %55, align 8
  %57 = icmp eq i32*** %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32***, i32**** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32**, i32*** %61, i64 %62
  %64 = load i32**, i32*** %63, align 8
  %65 = icmp eq i32** %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58, %53, %48
  %67 = load i32, i32* @ACL_DENIED_CMD, align 4
  store i32 %67, i32* %2, align 4
  br label %204

68:                                               ; preds = %58
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %68, %102
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32***, i32**** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i32**, i32*** %72, i64 %73
  %75 = load i32**, i32*** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @ACL_DENIED_CMD, align 4
  store i32 %81, i32* %2, align 4
  br label %204

82:                                               ; preds = %69
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %85, i64 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32***, i32**** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds i32**, i32*** %92, i64 %93
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @strcasecmp(i32 %89, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %82
  br label %105

102:                                              ; preds = %82
  %103 = load i64, i64* %6, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %69

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %43
  br label %107

107:                                              ; preds = %106, %35, %28
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %202, label %116

116:                                              ; preds = %107
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %202

130:                                              ; preds = %123, %116
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32* @getKeysFromCommand(%struct.TYPE_9__* %133, %struct.TYPE_10__** %136, i32 %139, i32* %7)
  store i32* %140, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %196, %130
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %199

145:                                              ; preds = %141
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @listRewind(i32 %148, i32* %10)
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %187, %145
  %151 = call i32* @listNext(i32* %10)
  store i32* %151, i32** %11, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %188

153:                                              ; preds = %150
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @listNodeValue(i32* %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i64 @sdslen(i32 %156)
  store i64 %157, i64* %14, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %167, i64 %169
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %176, i64 %178
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @sdslen(i32 %182)
  %184 = call i64 @stringmatchlen(i32 %163, i64 %164, i32 %173, i64 %183, i32 0)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %153
  store i32 1, i32* %12, align 4
  br label %188

187:                                              ; preds = %153
  br label %150

188:                                              ; preds = %186, %150
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 @getKeysFreeResult(i32* %192)
  %194 = load i32, i32* @ACL_DENIED_KEY, align 4
  store i32 %194, i32* %2, align 4
  br label %204

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %141

199:                                              ; preds = %141
  %200 = load i32*, i32** %8, align 8
  %201 = call i32 @getKeysFreeResult(i32* %200)
  br label %202

202:                                              ; preds = %199, %123, %107
  %203 = load i32, i32* @ACL_OK, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %191, %80, %66, %26
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i64 @ACLGetUserCommandBit(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @strcasecmp(i32, i32*) #1

declare dso_local i32* @getKeysFromCommand(%struct.TYPE_9__*, %struct.TYPE_10__**, i32, i32*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local i32 @listNodeValue(i32*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i64 @stringmatchlen(i32, i64, i32, i64, i32) #1

declare dso_local i32 @getKeysFreeResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
